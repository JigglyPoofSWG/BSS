/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef FORCEDODGECOMMAND_H_
#define FORCEDODGECOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"

class ForceDodgeCommand : public JediQueueCommand {
public:

	ForceDodgeCommand(const String& name, ZoneProcessServer* server)
		: JediQueueCommand(name, server) {

		buffCRC = BuffCRC::JEDI_FORCE_DODGE;

		skillMods.put("ranged_defense", 15);

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {
		return doJediSelfBuffCommand(creature);
	}

};

#endif //FORCEDODGECOMMAND_H_
