giant_canyon_krayt_dragon = Creature:new {
	objectName = "@mob/creature_names:giant_canyon_krayt_dragon",
	socialGroup = "krayt",
	faction = "",
	level = 300,
	chanceHit = 30.0,
	damageMin = 1645,
	damageMax = 3000,
	baseXp = 28549,
	baseHAM = 385000,
	baseHAMmax = 471000,
	armor = 3,
	resists = {170,170,170,170,130,170,170,170,-1},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_bristley",
	hideAmount = 870,
	boneType = "bone_mammal",
	boneAmount = 805,
	milk = 0,
	tamingChance = 0,
	ferocity = 20,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/canyon_krayt_dragon.iff"},
	scale = 1.2;

	lootGroups = {		
			{
			groups = {
				{group = "krayt_tissue_rare", chance = 3000000},
				{group = "krayt_tissue_common", chance = 7000000},
						},
			lootChance = 10000000
			},
		
			{
			groups = {
				{group = "krayt_dragon_rare", chance = 3000000},
				{group = "krayt_dragon_common", chance = 7000000},
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
				{group = "pearls_premium", chance = 10000000},
			},
			lootChance = 10000000
			},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareaattack","stateAccuracyBonus=50"},
		{"creatureareaknockdown","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(giant_canyon_krayt_dragon, "giant_canyon_krayt_dragon")
