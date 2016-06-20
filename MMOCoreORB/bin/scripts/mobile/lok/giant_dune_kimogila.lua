giant_dune_kimogila = Creature:new {
	objectName = "@mob/creature_names:giant_dune_kimogila",
	socialGroup = "kimogila",
	faction = "",
	level = 253,
	chanceHit = 8.5,
	damageMin = 895,
	damageMax = 1500,
	baseXp = 114504,
	baseHAM = 181000,
	baseHAMmax = 199000,
	armor = 2,
	resists = {165,180,165,200,165,165,200,165,-1},
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

	templates = {"object/mobile/giant_dune_kimogila.iff"},
	scale = 1.3,
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
		{"creatureareacombo",""},
		{"creatureareadisease",""}
	}
}

CreatureTemplates:addCreatureTemplate(giant_dune_kimogila, "giant_dune_kimogila")
