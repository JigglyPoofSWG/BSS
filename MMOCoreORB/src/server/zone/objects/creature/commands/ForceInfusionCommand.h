/*
    Copyright <SWGEmu>
  See file COPYING for copying conditions.*/

#ifndef FORCEINFUSIONCOMMAND_H_
#define FORCEINFUSIONCOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "ForcePowersQueueCommand.h"
#include "server/zone/packets/player/PlayMusicMessage.h"

class ForceInfusionCommand : public ForcePowersQueueCommand {
public:

 ForceInfusionCommand(const String& name, ZoneProcessServer* server)
  : ForcePowersQueueCommand(name, server) {

 }

 int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		if (isWearingArmor(creature)) {
			return NOJEDIARMOR;
		}

		ManagedReference<SceneObject*> targetObject = server->getZoneServer()->getObject(target);

		if (targetObject == NULL || !targetObject->isCreatureObject()) {
			return INVALIDTARGET;
		}

		return doHealAction(creature, target);

	}
};

#endif //FORCECHOKECOMMAND_H_