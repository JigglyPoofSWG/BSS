/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef FORCEAURACOMMAND_H_
#define FORCEAURACOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"

class ForceAuraCommand : public JediQueueCommand {
public:

	ForceAuraCommand(const String& name, ZoneProcessServer* server)
		: JediQueueCommand(name, server) {

		buffCRC = BuffCRC::JEDI_FORCE_AURA;

		skillMods.put("jedi_toughness", 15);

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {
		return doJediSelfBuffCommand(creature);
	}

};

#endif //FORCEAURACOMMAND_H_
