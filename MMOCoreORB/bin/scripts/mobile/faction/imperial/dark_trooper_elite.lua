dark_trooper_elite = Creature:new {
	customName = "Elite Dark Trooper",
	socialGroup = "imperial",
	faction = "imperial",
	level = 135,
	chanceHit = 0.75,
	damageMin = 305,
	damageMax = 320,
	baseXp = 8465,
	baseHAM = 39000,
	baseHAMmax = 40000,
	armor = 2,
	resists = {50,50,50,50,50,50,50,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + OVERT,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.5,

	templates = {"object/mobile/dark_trooper.iff"},
	lootGroups = {
		{
			groups = {
				{group = "rifles", chance = 2000000},
				{group = "holocron_dark", chance = 1000000},
				{group = "holocron_light", chance = 1000000},
				{group = "carbines", chance = 2000000},
				{group = "pistols", chance = 2000000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "armor_attachments", chance = 1000000},
			}
		}
	},
	weapons = {"dark_trooper_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/stormtrooper",
	personalityStf = "@hireling/hireling_stormtrooper",
	attacks = merge(riflemanmaster,marksmanmaster,fencermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(dark_trooper_elite, "dark_trooper_elite")
