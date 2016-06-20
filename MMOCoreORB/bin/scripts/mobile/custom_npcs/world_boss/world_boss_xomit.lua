world_boss_xomit = Creature:new {
	objectName = "",
	customName = "Xomit Grunseit, Black Sun Underlord",
	socialGroup = "death_watch",
	faction = "",
	level = 300,
	chanceHit = 19,
	damageMin = 1500,
	damageMax = 2000,
	baseXp = 120948,
	baseHAM = 3350000,
	baseHAMmax = 3550000,
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

	templates = {"object/mobile/dressed_black_sun_guard.iff"},
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
	weapons = {"xomit_weapons"},
	conversationTemplate = "",
	attacks = merge(swordsmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(world_boss_xomit, "world_boss_xomit")
