enraged_dune_kimogila = Creature:new {
	objectName = "@mob/creature_names:enraged_dune_kimogila",
	socialGroup = "kimogila",
	faction = "",
	level = 148,
	chanceHit = 6.25,
	damageMin = 940,
	damageMax = 1590,
	baseXp = 14030,
	baseHAM = 62000,
	baseHAMmax = 75000,
	armor = 2,
	resists = {180,190,180,200,180,180,200,180,-1},
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
	scale = 1.05,
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
				{group = "armor_attachments", chance = 5000000},
				{group = "clothing_attachments", chance = 5000000},			
			},
			lootChance = 10000000
			},
			
			{
			groups = {
				{group = "pearls_flawless", chance = 10000000},
			},
			lootChance = 10000000
			},
			
			{
			groups = {
				{group = "pearls_flawless", chance = 10000000},
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
		{"creatureareaattack",""},
		{"blindattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(enraged_dune_kimogila, "enraged_dune_kimogila")
