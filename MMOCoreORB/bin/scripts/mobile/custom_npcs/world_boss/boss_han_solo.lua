boss_han_solo = Creature:new {
	objectName = "@mob/creature_names:han_solo",
	socialGroup = "rebel",
	faction = "rebel",
	level = 240,
	chanceHit = 1,
	damageMin = 1045,
	damageMax = 1700,
	baseXp = 29429,
	baseHAM = 300000,
	baseHAMmax = 350000,
	armor = 2,
	resists = {75,75,75,75,75,75,75,75,-1},
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

	templates = {"object/mobile/han_solo.iff"},
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
	weapons = {"han_solo_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,marksmanmaster,pistoleermaster)
}

CreatureTemplates:addCreatureTemplate(boss_han_solo, "boss_han_solo")