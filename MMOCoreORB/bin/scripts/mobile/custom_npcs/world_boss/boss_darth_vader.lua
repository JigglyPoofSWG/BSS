boss_darth_vader = Creature:new {
	objectName = "@mob/creature_names:darth_vader",
	socialGroup = "imperial",
	faction = "imperial",
	level = 300,
	chanceHit = 30,
	damageMin = 1645,
	damageMax = 3000,
	baseXp = 68549,
	baseHAM = 1385000,
	baseHAMmax = 1471000,
	armor = 3,
	resists = {85,85,85,85,85,85,85,85,-1},
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
  	scale = 1.25,

	templates = {"object/mobile/darth_vader.iff"},
		lootGroups = {
		{
		groups = {
				{group = "holocron_dark", chance = 2500000},
				{group = "holocron_light", chance = 2500000},
				{group = "pearls_flawless", chance = 5000000},
				},
				lootChance = 10000000
		},
		{
		groups = {
				{group = "armor_attachments", chance = 4400000},
				{group = "clothing_attachments", chance = 4500000},
				{group = "crystals_ancient", chance = 100000}
				},
				lootChance = 10000000
		},
		{
		groups = {
				{group = "rifles", chance = 2500000},
				{group = "pistols", chance = 2500000},
				{group = "melee_weapons", chance = 3500000},
				{group = "carbines", chance = 2500000},
				},
				lootChance = 10000000
		}
		
	},
	weapons = {"darth_vader_weapons"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(boss_darth_vader, "boss_darth_vader")
