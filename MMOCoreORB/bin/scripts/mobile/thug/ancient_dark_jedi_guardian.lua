ancient_dark_jedi_guardian = Creature:new {
	customName = "an Ancient Dark Jedi Guardian",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "imperial",
	faction = "imperial",
	level = 300,
	chanceHit = 30,
	damageMin = 1045,
	damageMax = 1290,
	baseXp = 28532,
	baseHAM = 1106000,
	baseHAMmax = 1352000,
	armor = 3,
	resists = {95,95,95,95,95,95,95,95,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 50,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_dark_jedi_human_male_01.iff",
		"object/mobile/dressed_dark_jedi_human_female_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "holocron_dark", chance = 5000000},
				{group = "holocron_light", chance = 5000000}
			
			},
			lootChance = 10000000
		},
		
		{
			groups = {
				{group = "named_color_crystals", chance = 3000000},
				{group = "crystals_premium", chance = 7000000}
			
			},
			lootChance = 10000000
		},
		
		{
			groups = {
				{group = "named_color_crystals", chance = 3000000},
				{group = "crystals_premium", chance = 7000000}
			
			},
			lootChance = 10000000
		},
		
		{
			groups = {
				{group = "armor_attachments", chance = 5000000},
				{group = "clothing_attachments", chance = 5000000}			
			},
			lootChance = 10000000
		},
		
		{
			groups = {
				{group = "armor_attachments", chance = 5000000},
				{group = "clothing_attachments", chance = 5000000},			
			},
			lootChance = 10000000
		}
		
	},
	weapons = {"dark_jedi_weapons_gen4"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(ancient_dark_jedi_guardian, "ancient_dark_jedi_guardian")
