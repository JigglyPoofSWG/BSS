world_boss_xizor = Creature:new {
	objectName = "",
	customName = "Xizor (Black Sun Prince)",
	socialGroup = "death_watch",
	faction = "",
	level = 500,
	chanceHit = 19,
	damageMin = 2000,
	damageMax = 2500,
	baseXp = 120948,
	baseHAM = 8350000,
	baseHAMmax = 8550000,
	armor = 3,
	resists = {80,80,90,80,45,45,100,70,-1},
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
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.15,

	templates = {"object/mobile/dressed_death_watch_silver.iff"},
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
				{group = "armor_attachments", chance = 5000000},
				{group = "clothing_attachments", chance = 5000000},
				},
			lootChance = 10000000
		},
		{
		groups = {
				{group = "armor_attachments", chance = 5000000},
				{group = "clothing_attachments", chance = 5000000},
				},
			lootChance = 10000000
		},
		{
		groups = {
				{group = "armor_attachments", chance = 5000000},
				{group = "clothing_attachments", chance = 5000000},
				},
			lootChance = 10000000
		},
		{
		groups = {
				{group = "armor_attachments", chance = 5000000},
				{group = "clothing_attachments", chance = 5000000},
				},
			lootChance = 10000000
		},
		{
		groups = {
				{group = "weapons_all", chance = 10000000},
				},
			lootChance = 10000000
		},
		{
		groups = {
				{group = "weapons_all", chance = 10000000},
				},
			lootChance = 10000000
		}
	},
	weapons = {"xizor_weapons"},
	conversationTemplate = "",
	attacks = merge(swordsmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(world_boss_xizor, "world_boss_xizor")
