/*
Copyright (C) 2007 <SWGEmu>

This File is part of Core3.

This program is free software; you can redistribute
it and/or modify it under the terms of the GNU Lesser
General Public License as published by the Free Software
Foundation; either version 2 of the License,
or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
See the GNU Lesser General Public License for
more details.

You should have received a copy of the GNU Lesser General
Public License along with this program; if not, write to
the Free Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA

Linking Engine3 statically or dynamically with other modules
is making a combined work based on Engine3.
Thus, the terms and conditions of the GNU Lesser General Public License
cover the whole combination.

In addition, as a special exception, the copyright holders of Engine3
give you permission to combine Engine3 program with free software
programs or libraries that are released under the GNU LGPL and with
code included in the standard release of Core3 under the GNU LGPL
license (or modified versions of such code, with unchanged license).
You may copy and distribute such a system following the terms of the
GNU LGPL for Engine3 and the licenses of the other code concerned,
provided that you include the source code of that other code when
and as the GNU LGPL requires distribution of source code.

Note that people who make modified versions of Engine3 are not obligated
to grant this special exception for their modified versions;
it is their choice whether to do so. The GNU Lesser General Public License
gives permission to release a modified version without this exception;
this exception also makes it possible to release a modified version
which carries forward this exception.a
*/

#ifndef FORCEINFUSIONCOMMAND_H_
#define FORCEINFUSIONCOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "CombatQueueCommand.h"
#include "server/zone/objects/creature/buffs/Buff.h"
#include "server/zone/objects/creature/buffs/DelayedBuff.h"
#include "server/zone/packets/object/CombatAction.h"
#include "server/zone/objects/player/FactionStatus.h"
#include "server/zone/objects/creature/buffs/SingleUseBuff.h"
#include "server/zone/managers/player/PlayerManager.h"
#include "server/zone/packets/player/PlayMusicMessage.h"
#include "server/zone/objects/player/events/ForceInfusionTask.h"

class ForceInfusionCommand : public CombatQueueCommand {
 int forceCost;

 int healthHealed;
 int actionHealed;
 float speed;
 float range;
public:

 ForceInfusionCommand(const String& name, ZoneProcessServer* server)
  : CombatQueueCommand(name, server) {
   
  healthHealed = 0;
  actionHealed = 0;
  mindHealed = 0;

  forceCost = 800;
  range = 32;

 }
 
 void doAnimations(CreatureObject* creature, CreatureObject* creatureTarget) const {
  creatureTarget->playEffect("clienteffect/pl_force_heal_self.cef", "");

  if (creature == creatureTarget)
   creature->playEffect("clienteffect/pl_force_heal_self.cef", "");
  else
   creature->playEffect("clienteffect/pl_force_heal_self.cef", "");
 }

 int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {
  
  int amountOfTicks = 5;
  int duration;
  int coolDown;
  
  if (!checkStateMask(creature))
   return INVALIDSTATE;

  if (!checkInvalidLocomotions(creature))
   return INVALIDLOCOMOTION;
   
  int result = doCommonMedicalCommandChecks(creature);
   if (result != SUCCESS)
    return result;
    ManagedReference<PlayerObject*> playerObject = creature->getPlayerObject(); 
   if (playerObject != NULL && playerObject->getForcePower() < forceCost) {
    creature->sendSystemMessage("@jedi_spam:no_force_power"); //"You do not have enough Force Power to peform that action.

    return GENERALERROR;
   }

  int res = doCombatAction(creature, target);
  
  Reference<SceneObject*> object = server->getZoneServer()->getObject(target);
  ManagedReference<CreatureObject*> creatureTarget = cast<CreatureObject*>( object.get());
  
  uint32 buffCRC = BuffCRC::JEDI_FORCE_INFUSION ; //DURATION
  unsigned int coolDownCRC = STRING_HASHCODE("BACTA_INFUSION_COOLDOWN_SELF");

  if (creatureTarget == NULL) //target is no one?
   creatureTarget = creature;//you're the target then... i hope.
  
  Locker clocker(creatureTarget, creature);
  
  if (creature->hasBuff(coolDownCRC)) {
   creature->sendSystemMessage("You cannot infuse so soon!");
   PlayMusicMessage* pmm = new PlayMusicMessage("sound/ui_all_friendly_fire.snd");
   creature->sendMessage(pmm);
   return GENERALERROR;
  }
  else if (!creatureTarget->hasBuff(buffCRC)) {
   if (!creature->isInRange(creatureTarget, range + creatureTarget->getTemplateRadius() + creature->getTemplateRadius()))
    return TOOFAR;
    
   if ((creatureTarget->isAiAgent() && !creatureTarget->isPet()) || creatureTarget->isDroidObject() || creatureTarget->isDead() || creatureTarget->isRidingMount() || creatureTarget->isAttackableBy(creature))
    creatureTarget = creature;
    
   if (!CollisionManager::checkLineOfSight(creature, creatureTarget)) {
    creature->sendSystemMessage("@container_error_message:container18");
    return GENERALERROR;
   }
   
   if (!creatureTarget->isHealableBy(creature)) {
    creature->sendSystemMessage("@healing:pvp_no_help");  //It would be unwise to help such a patient.
    return GENERALERROR;
   }
   
   if (!creatureTarget->hasDamage(CreatureAttribute::HEALTH)) {
    if (creatureTarget == creature)
     creature->sendSystemMessage("@healing_response:healing_response_61"); //You have no damage to heal.
    else if (creatureTarget->isPlayerCreature()) {
     StringIdChatParameter stringId("healing_response", "healing_response_63"); //%NT has no damage to heal.
     stringId.setTT(creatureTarget->getObjectID());
     creature->sendSystemMessage(stringId);
    } else {
     StringBuffer message;
     message << creatureTarget->getDisplayedName() << " has no damage to heal.";
     creature->sendSystemMessage(message.toString());
    }

    return GENERALERROR;
   }
   
   
   duration = 40;
   coolDown = 20;
   amountOfTicks = duration / 8;
   
   Reference<ForceInfusionTask*> biCheck = creatureTarget->getPendingTask("ForceInfusionTask").castTo<BactaInfusionTickTask*>();
   ManagedReference<SingleUseBuff*> buff = new SingleUseBuff(creatureTarget, buffCRC, duration, BuffType::MEDICAL, getNameCRC());
   ManagedReference<Buff*> buff2= new Buff(creature, coolDownCRC, cooldown, BuffType::OTHER);
   if (biCheck != NULL) {
    return SUCCESS;
   }
   creatureTarget->addBuff(buff);
   creature->addBuff(buff2);
   
   doAnimations(creature, creatureTarget);
   checkForTef(creature, creatureTarget);
   
   Reference<ForceInfusionTask*> biTask = new ForceInfusionTask(creature, creatureTarget, amountOfTicks);
   creatureTarget->addPendingTask("ForceInfusionTask", biTask, 1000);
   playerObject->setForcePower(currentForce - forceCost);
  }else {
    creature->sendSystemMessage("You target is already being Infused.");
  }
  return SUCCESS;
 }

};

#endif //ForceInfusionCOMMAND_H_