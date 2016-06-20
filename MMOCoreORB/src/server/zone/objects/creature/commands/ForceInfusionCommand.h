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
which carries forward this exception.
*/

#ifndef FORCEINFUSIONCOMMAND_H_
#define FORCEINFUSIONCOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "ForceHealQueueCommand.h"
#include "server/zone/objects/creature/buffs/DelayedBuff.h"
#include "server/zone/packets/object/CombatAction.h"
#include "server/zone/objects/player/FactionStatus.h"
#include "server/zone/objects/creature/buffs/SingleUseBuff.h"
#include "server/zone/managers/player/PlayerManager.h"
#include "server/zone/packets/player/PlayMusicMessage.h"
#include "server/zone/objects/player/events/BactaInfusionTickTask.h"
#include "server/zone/objects/creature/CreatureObject.h"

class ForceInfusionCommand : public ForceHealQueueCommand {
public:
	ForceInfusionCommand(const String& name, ZoneProcessServer* server, CreatureObject* creature, const uint64& target)
		: ForceHealQueueCommand(name, server) {
		//const uint64& target = NULL;
		int counter = 0;
		//ManagedReference<CreatureObject*> creature = cast<CreatureObject*>(object.get());
		Reference<SceneObject*> object = server->getZoneServer()->getObject(target);
		ManagedReference<CreatureObject*> creatureTarget = cast<CreatureObject*>(object.get());
		
		uint32 buffCRC = BuffCRC::JEDI_FORCE_INFUSION;

		if (creatureTarget == NULL) //target is no one?
			creatureTarget = creature;//you're the target then... i hope.
		
			int duration = 40;
			
			/*int amountOfTicks = 5;
			Locker lockerC(creature);
			Locker lockerCT(creatureTarget,creature);
			if(creature != NULL && creatureTarget != NULL) {
			if (counter < amountOfTicks && !creatureTarget->isIncapacitated() && !creatureTarget->isDead()) {
				int health = 500;
				creatureTarget->healDamage(creature, CreatureAttribute::HEALTH, health, true);
				creatureTarget->healDamage(creature, CreatureAttribute::ACTION, health, true);
				creatureTarget->healDamage(creature, CreatureAttribute::MIND, health, true);
				creatureTarget->playEffect("clienteffect/pl_force_heal_self.cef", "");
				counter++;
				this->reschedule(8000); // Reschedule in 8 seconds...
			}*/
			
			/*ManagedReference<SingleUseBuff*> buff = new SingleUseBuff(creatureTarget, buffCRC, duration, BuffType::JEDI, getNameCRC());*/
			ManagedReference<SingleUseBuff*> buff = new SingleUseBuff(creatureTarget, buffCRC, duration, BuffType::JEDI, buffCRC);

			creatureTarget->addBuff(buff);
			
			Reference<BactaInfusionTickTask*> biTask = new BactaInfusionTickTask(creature, creatureTarget);
			creatureTarget->addPendingTask("BactaInfusionTickTask", biTask, 1000);
	}
	/*public Task {
			int counter = 0;
			int amountOfTicks = 5;
			Locker lockerC(creature);
			Locker lockerCT(creatureTarget,creature);
			if(creature != NULL && creatureTarget != NULL) {
			if (counter < amountOfTicks && !creatureTarget->isIncapacitated() && !creatureTarget->isDead()) {
				int health = 500;
				creatureTarget->healDamage(creature, CreatureAttribute::HEALTH, health, true);
				creatureTarget->healDamage(creature, CreatureAttribute::ACTION, health, true);
				creatureTarget->healDamage(creature, CreatureAttribute::MIND, health, true);
				creatureTarget->playEffect("clienteffect/pl_force_heal_self.cef", "");
				counter++;
				this->reschedule(8000); // Reschedule in 8 seconds...
			}
			

		}*/
};

#endif //ForceInfusionCOMMAND_H_
