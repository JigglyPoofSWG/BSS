/*
 * FactionManager.cpp
 *
 *  Created on: Mar 17, 2011
 *      Author: crush
 */

#include "FactionManager.h"
#include "FactionMap.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "templates/manager/TemplateManager.h"
#include "server/zone/objects/group/GroupObject.h"
#include "server/zone/managers/player/PlayerManager.h"

FactionManager::FactionManager() {
	setLoggingName("FactionManager");
	setGlobalLogging(false);
	setLogging(false);
}

void FactionManager::loadData() {
	loadLuaConfig();
	loadFactionRanks();
}

void FactionManager::loadFactionRanks() {
	IffStream* iffStream = TemplateManager::instance()->openIffFile("datatables/faction/rank.iff");

	if (iffStream == NULL) {
		warning("Faction ranks could not be found.");
		return;
	}

	DataTableIff dtiff;
	dtiff.readObject(iffStream);

	factionRanks.readObject(&dtiff);

	delete iffStream;

	info("loaded " + String::valueOf(factionRanks.getCount()) + " ranks", true);
}

void FactionManager::loadLuaConfig() {
	info("Loading config file.", true);

	Lua* lua = new Lua();
	lua->init();

	lua_register(lua->getLuaState(), "addFaction", addFaction);

	//Load the faction manager lua file.
	lua->runFile("scripts/managers/faction_manager.lua");

	delete lua;
	lua = NULL;

}

int FactionManager::addFaction(lua_State* L) {
	String allies = Lua::getStringParameter(L);
	String enemies = Lua::getStringParameter(L);
	String factionName = Lua::getStringParameter(L);

	FactionManager* factionManager = FactionManager::instance();

	FactionMap* factionMap = factionManager->getFactionMap();

	if (factionMap == NULL)
		return 1;

	Faction faction(factionName);
	faction.parseEnemiesFromList(enemies);
	faction.parseAlliesFromList(allies);

	factionMap->addFaction(faction);

	return 0;
}

FactionMap* FactionManager::getFactionMap() {
	return &factionMap;
}

void FactionManager::awardFactionStanding(CreatureObject* player, const String& factionName, int level) {
	if (player == NULL)
		return;

	ManagedReference<PlayerObject*> ghost = player->getPlayerObject();

	if (!factionMap.contains(factionName))
		return;

	float gain = level;
	float lose = gain * 2;

	Faction faction = factionMap.get(factionName);
	SortedVector<String>* enemies = faction.getEnemies();
	SortedVector<String>* allies = faction.getAllies();

	ghost->decreaseFactionStanding(factionName, lose);

	//Lose faction standing to allies of the creature.
	for (int i = 0; i < allies->size(); ++i) {
		String ally = allies->get(i);

		if ((ally == "rebel" || ally == "imperial")) {
			continue;
		}

		ghost->decreaseFactionStanding(ally, lose);
	}

	bool gcw = false;
	if (factionName == "rebel" || factionName == "imperial") {
		gcw = true;
	}

	//Gain faction standing to enemies of the creature.
	for (int i = 0; i < enemies->size(); ++i) {
		String enemy = enemies->get(i);

		if ((enemy == "rebel" || enemy == "imperial") && !gcw) {
			continue;
		}

		ghost->increaseFactionStanding(enemy, gain);
	}
}


void FactionManager::awardPvpFactionPoints(CreatureObject* killer, CreatureObject* destructedObject) {
	float modifiedXp = 0;
	float lostXp;
	int rankK = 0;
	int rankD = 0;
	int lightR = 0;
	int darkR = 0;
	
	if (destructedObject->hasSkill("force_rank_light_master") || destructedObject->hasSkill("force_rank_dark_master")){
		modifiedXp = 4000;
		rankD = 12;
	} else if (destructedObject->hasSkill("force_rank_light_rank_10") || destructedObject->hasSkill("force_rank_dark_rank_10")){
		modifiedXp = 3000;
		rankD = 11;
	} else if (destructedObject->hasSkill("force_rank_light_rank_09") || destructedObject->hasSkill("force_rank_dark_rank_09")){
		modifiedXp = 2400;
		rankD = 10;
	} else if (destructedObject->hasSkill("force_rank_light_rank_08") || destructedObject->hasSkill("force_rank_dark_rank_08")){
		modifiedXp = 2000;
		rankD = 9;
	} else if (destructedObject->hasSkill("force_rank_light_rank_07") || destructedObject->hasSkill("force_rank_dark_rank_07")){
		modifiedXp = 1600;
		rankD = 8;
	} else if (destructedObject->hasSkill("force_rank_light_rank_06") || destructedObject->hasSkill("force_rank_dark_rank_06")){
		modifiedXp = 1400;
		rankD = 7;
	} else if (destructedObject->hasSkill("force_rank_light_rank_05") || destructedObject->hasSkill("force_rank_dark_rank_05")){
		modifiedXp = 1200;
		rankD = 6;
	} else if (destructedObject->hasSkill("force_rank_light_rank_04") || destructedObject->hasSkill("force_rank_dark_rank_04")){
		modifiedXp = 900;
		rankD = 5;
	} else if (destructedObject->hasSkill("force_rank_light_rank_03") || destructedObject->hasSkill("force_rank_dark_rank_03")){
		modifiedXp = 800;
		rankD = 4;
	} else if (destructedObject->hasSkill("force_rank_light_rank_02") || destructedObject->hasSkill("force_rank_dark_rank_02")){
		modifiedXp = 700;
		rankD = 3;
	} else if (destructedObject->hasSkill("force_rank_light_rank_01") || destructedObject->hasSkill("force_rank_dark_rank_01")){
		modifiedXp = 600;
		rankD = 2;
	} else if (destructedObject->hasSkill("force_rank_light_novice") || destructedObject->hasSkill("force_rank_dark_novice")){
		modifiedXp = 500;
		rankD = 1;
	}
	
	
	if (killer->hasSkill("force_rank_dark_master") || killer->hasSkill("force_rank_light_master")){
		rankK = 12;
	} else if (killer->hasSkill("force_rank_dark_rank_10") || killer->hasSkill("force_rank_light_rank_10")){
		rankK = 11;
	} else if (killer->hasSkill("force_rank_dark_rank_09") || killer->hasSkill("force_rank_light_rank_09")){
		rankK = 10;
	} else if (killer->hasSkill("force_rank_dark_rank_08") || killer->hasSkill("force_rank_light_rank_08")){
		rankK = 9;
	} else if (killer->hasSkill("force_rank_dark_rank_07") || killer->hasSkill("force_rank_light_rank_07")){
		rankK = 8;
	} else if (killer->hasSkill("force_rank_dark_rank_06") || killer->hasSkill("force_rank_light_rank_06")){
		rankK = 7;
	} else if (killer->hasSkill("force_rank_dark_rank_05") || killer->hasSkill("force_rank_light_rank_05")){
		rankK = 6;
	} else if (killer->hasSkill("force_rank_dark_rank_04") || killer->hasSkill("force_rank_light_rank_04")){
		rankK = 5;
	} else if (killer->hasSkill("force_rank_dark_rank_03") || killer->hasSkill("force_rank_light_rank_03")){
		rankK = 4;
	} else if (killer->hasSkill("force_rank_dark_rank_02") || killer->hasSkill("force_rank_light_rank_02")){
		rankK = 3;
	} else if (killer->hasSkill("force_rank_dark_rank_01") || killer->hasSkill("force_rank_light_rank_01")){
		rankK = 2;
	} else if (killer->hasSkill("force_rank_dark_novice") || killer->hasSkill("force_rank_light_novice")){
		rankK = 1;
	}	

	if (rankD <= rankK){
	modifiedXp = modifiedXp;
	} else if (rankD > rankK) {
	modifiedXp = modifiedXp * (1 + ((rankD - rankK) / 10.0f));
	}
	
	lostXp = ((modifiedXp * 0.5) * -1);
	
	//ManagedReference<GroupObject*> group = killer->getGroup();
	
	//int numGrp = 0;
	
	//getNumberOfPlayerMembers()

	if (killer->isPlayerCreature() && destructedObject->isPlayerCreature()) {
		CreatureObject* killerCreature = cast<CreatureObject*>(killer);
		ManagedReference<PlayerObject*> ghost = killerCreature->getPlayerObject();

		ManagedReference<PlayerObject*> killedGhost = destructedObject->getPlayerObject();
		if (killer->isRebel() && destructedObject->isImperial()) {
				if (killer->hasSkill("force_rank_light_novice") && destructedObject->hasSkill("force_rank_dark_novice")){
				ghost->addExperience("force_rank_xp", modifiedXp, true);
				killedGhost->addExperience("force_rank_xp", lostXp, true);
			
			}
			ghost->increaseFactionStanding("rebel", 30);
			ghost->decreaseFactionStanding("imperial", 45);

			killedGhost->decreaseFactionStanding("imperial", 45);
		} else if (killer->isImperial() && destructedObject->isRebel()) {
			if (killer->hasSkill("force_rank_dark_novice") && destructedObject->hasSkill("force_rank_light_novice")){
				ghost->addExperience("force_rank_xp", modifiedXp, true);
				killedGhost->addExperience("force_rank_xp", lostXp), true;
			}
			ghost->increaseFactionStanding("imperial", 30);
			ghost->decreaseFactionStanding("rebel", 45);

			killedGhost->decreaseFactionStanding("rebel", 45);
		}
	}
}

String FactionManager::getRankName(int idx) {
	if (idx >= factionRanks.getCount())
		return "";

	return factionRanks.getRank(idx).getName();
}

int FactionManager::getRankCost(int rank) {
	if (rank >= factionRanks.getCount())
		return -1;

	return factionRanks.getRank(rank).getCost();
}

int FactionManager::getRankDelegateRatioFrom(int rank) {
	if (rank >= factionRanks.getCount())
		return -1;

	return factionRanks.getRank(rank).getDelegateRatioFrom();
}

int FactionManager::getRankDelegateRatioTo(int rank) {
	if (rank >= factionRanks.getCount())
		return -1;

	return factionRanks.getRank(rank).getDelegateRatioTo();
}

int FactionManager::getFactionPointsCap(int rank) {
	if (rank >= factionRanks.getCount())
		return -1;

	return MAX(1000, getRankCost(rank) * 20);
}

bool FactionManager::isFaction(const String& faction) {
	if (factionMap.contains(faction))
		return true;

	return false;
}

bool FactionManager::isEnemy(const String& faction1, const String& faction2) {

	if (!factionMap.contains(faction1) || !factionMap.contains(faction2))
		return false;

	Faction* faction = factionMap.getFaction(faction1);

	return faction->getEnemies()->contains(faction2);
}

bool FactionManager::isAlly(const String& faction1, const String& faction2) {

	if (!factionMap.contains(faction1) || !factionMap.contains(faction2))
		return false;

	Faction* faction = factionMap.getFaction(faction1);

	return faction->getAllies()->contains(faction2);
}
