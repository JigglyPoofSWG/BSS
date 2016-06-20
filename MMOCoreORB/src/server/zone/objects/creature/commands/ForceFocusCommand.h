/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef FORCEFOCUSCOMMAND_H_
#define FORCEFOCUSCOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"

class ForceFocusCommand : public JediQueueCommand {
public:

	ForceFocusCommand(const String& name, ZoneProcessServer* server)
		: JediQueueCommand(name, server) {

		buffCRC = BuffCRC::JEDI_FORCE_FOCUS;

		skillMods.put("jedi_state_defense", 15);

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {
		return doJediSelfBuffCommand(creature);
	}

};

#endif //FORCEFOCUSCOMMAND_H_
