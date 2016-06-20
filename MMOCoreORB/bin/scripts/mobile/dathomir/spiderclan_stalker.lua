spiderclan_stalker = Creature:new {
	objectName = "@mob/creature_names:spider_nightsister_stalker",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "spider_nightsister",
	faction = "spider_nightsister",
	level = 100,
	chanceHit = 0.85,
	damageMin = 620,
	damageMax = 950,
	baseXp = 9522,
	baseHAM = 20000,
	baseHAMmax = 25000,
	armor = 1,
	resists = {90,100,100,40,100,100,40,40,-1},
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
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_spider_nightsister_stalker.iff"},
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
	attacks = merge(brawlermaster,pikemanmaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(spiderclan_stalker, "spiderclan_stalker")
