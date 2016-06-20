nightsister_sentinel = Creature:new {
	objectName = "@mob/creature_names:nightsister_sentinal",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 88,
	chanceHit = 0.8,
	damageMin = 545,
	damageMax = 800,
	baseXp = 8408,
	baseHAM = 21000,
	baseHAMmax = 26000,
	armor = 1,
	resists = {45,45,45,100,100,100,100,100,-1},
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

	templates = {"object/mobile/dressed_dathomir_nightsister_sentinal.iff"},
	lootGroups = {
			{
			groups = {
				{group = "crystals_premium", chance = 1500000},
				{group = "nightsister_common", chance = 500000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000},
				{group = "weapons_all", chance = 1000000},
				{group = "wearables_scarce", chance = 1000000}
			},
			lootChance = 10000000
			},
			{
			groups = {
				{group = "crystals_premium", chance = 1500000},
				{group = "nightsister_common", chance = 500000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000},
				{group = "weapons_all", chance = 1000000},
				{group = "wearables_scarce", chance = 1000000}
			},
			lootChance = 10000000
			},
			{
			groups = {
				{group = "crystals_premium", chance = 1500000},
				{group = "nightsister_common", chance = 500000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000},
				{group = "weapons_all", chance = 1000000},
				{group = "wearables_scarce", chance = 1000000}
			},
			lootChance = 10000000
			},
			{
			groups = {
				{group = "crystals_premium", chance = 1500000},
				{group = "nightsister_common", chance = 500000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000},
				{group = "weapons_all", chance = 1000000},
				{group = "wearables_scarce", chance = 1000000}
			},
			lootChance = 10000000
			}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(fencermid,swordsmanmid,tkamid,pikemanmaster,brawlermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(nightsister_sentinel, "nightsister_sentinel")
