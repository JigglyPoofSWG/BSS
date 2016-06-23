boss_royal_imperial_guard = Creature:new {
	objectName = "@mob/creature_names:emperor_royal_guard",
	socialGroup = "imperial",
	faction = "imperial",
	level = 200,
	chanceHit = 1,
	damageMin = 845,
	damageMax = 1200,
	baseXp = 19429,
	baseHAM = 260000,
	baseHAMmax = 300000,
	armor = 0,
	resists = {65,65,65,65,65,65,65,65,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/royal_guard.iff"},
		lootGroups = {
		{
			groups = {
				{group = "holocron_dark", chance = 600000},
				{group = "holocron_light", chance = 600000},
				{group = "crystals_premium", chance = 600000},
				{group = "rifles", chance = 1500000},
				{group = "pistols", chance = 1500000},
				{group = "melee_weapons", chance = 1500000},
				{group = "armor_attachments", chance = 1100000},
				{group = "clothing_attachments", chance = 1100000},
				{group = "carbines", chance = 1500000}
			}
		}
	},
	weapons = {"dark_jedi_weapons_gen3"},
	attacks = merge(lightsabermaster)
}

CreatureTemplates:addCreatureTemplate(boss_royal_imperial_guard, "boss_royal_imperial_guard")