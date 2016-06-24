boss_general_grievous = Creature:new {
	objectName = "",
	customName = "NK-Necrosis",
	socialGroup = "grievous",
	faction = "",
	level = 300,
	chanceHit = 15,
	damageMin = 1045,
	damageMax = 1400,
	baseXp = 19429,
	baseHAM = 480000,
	baseHAMmax = 520000,
	armor = 2,
	resists = {80,80,80,80,80,80,80,80,-1},
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
	scale = 1.15,

	templates = {"object/mobile/ep3/general_grievous.iff"},
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

CreatureTemplates:addCreatureTemplate(boss_general_grievous, "boss_general_grievous")
