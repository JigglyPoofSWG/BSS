spiderclan_acolyte = Creature:new {
	objectName = "@mob/creature_names:spider_nightsister_initiate",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "spider_nightsister",
	faction = "spider_nightsister",
	level = 64,
	chanceHit = 0.5,
	damageMin = 445,
	damageMax = 600,
	baseXp = 6196,
	baseHAM = 11000,
	baseHAMmax = 14000,
	armor = 1,
	resists = {35,85,100,50,100,100,50,100,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_spider_nightsister_initiate.iff"},
	lootGroups = {
			{
			groups = {
				{group = "crystals_premium", chance = 1500000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000},
				{group = "weapons_all", chance = 1500000},
				{group = "wearables_scarce", chance = 1000000}
			},
			lootChance = 10000000
			},
			{
			groups = {
				{group = "crystals_premium", chance = 1500000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000},
				{group = "weapons_all", chance = 1500000},
				{group = "wearables_scarce", chance = 1000000}
			},
			lootChance = 10000000
			},
			{
			groups = {
				{group = "crystals_premium", chance = 1500000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000},
				{group = "weapons_all", chance = 1500000},
				{group = "wearables_scarce", chance = 1000000}
			},
			lootChance = 10000000
			},
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,pikemanmaster)
}

CreatureTemplates:addCreatureTemplate(spiderclan_acolyte, "spiderclan_acolyte")
