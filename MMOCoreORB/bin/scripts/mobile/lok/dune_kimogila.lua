dune_kimogila = Creature:new {
	objectName = "@mob/creature_names:dune_kimogila",
	socialGroup = "kimogila",
	faction = "",
	level = 123,
	chanceHit = 4,
	damageMin = 785,
	damageMax = 1280,
	baseXp = 11671,
	baseHAM = 53000,
	baseHAMmax = 65000,
	armor = 2,
	resists = {140,165,15,200,-1,15,200,-1,-1},
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
			}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack",""},
		{"creatureareacombo",""}
	}
}

CreatureTemplates:addCreatureTemplate(dune_kimogila, "dune_kimogila")
