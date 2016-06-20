enraged_kimogila = Creature:new {
	objectName = "@mob/creature_names:enraged_kimogila",
	socialGroup = "kimogila",
	faction = "",
	level = 135,
	chanceHit = 4.75,
	damageMin = 920,
	damageMax = 1550,
	baseXp = 12801,
	baseHAM = 50000,
	baseHAMmax = 61000,
	armor = 2,
	resists = {145,170,145,170,145,140,200,145,-1},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_leathery",
	hideAmount = 1000,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/kimogila_hue.iff"},
	scale = 0.9,
	lootGroups = {
			{	
			groups = {
				{group = "krayt_tissue_rare", chance = 100000},
				{group = "krayt_tissue_uncommon", chance = 9900000},
						},
			lootChance = 10000000
			},
			
			{
			groups = {
				{group = "krayt_dragon_rare", chance = 100000},
				{group = "krayt_dragon_uncommon", chance = 9900000},
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
				{group = "pearls_select", chance = 10000000},
			},
			lootChance = 10000000
			},
			
			{
			groups = {
				{group = "pearls_select", chance = 10000000},
			},
			lootChance = 10000000
			},		
			
			{
	        groups = {
				{group = "giant_dune_kimo_common", chance = 5000000},
				{group = "kimogila_common", chance = 5000000},
			},
			lootChance = 10000000
			},
			
			{
	        groups = {
				{group = "kimogila_common", chance = 10000000},
			},
			lootChance = 10000000
			},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack",""},
		{"dizzyattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(enraged_kimogila, "enraged_kimogila")
