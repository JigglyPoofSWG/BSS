/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef FORCEBARRIERCOMMAND_H_
#define FORCEBARRIERCOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"

class ForceBarrierCommand : public JediQueueCommand {
public:

	ForceBarrierCommand(const String& name, ZoneProcessServer* server)
		: JediQueueCommand(name, server) {

		buffCRC = BuffCRC::JEDI_FORCE_BARRIER;

		skillMods.put("melee_defense", 15);

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {
		return doJediSelfBuffCommand(creature);
	}

};

#endif //FORCEBARRIERCOMMAND_H_
