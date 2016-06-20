dark_inquisitor = Creature:new {
	customName = "Imperial Inquisitor",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "imperial",
	faction = "imperial",
	level = 265,
	chanceHit = 23.5,
	damageMin = 645,
	damageMax = 1000,
	baseXp = 25266,
	baseHAM = 461000,
	baseHAMmax = 520000,
	armor = 3,
	resists = {90,90,90,90,90,90,90,90,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 50,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = KILLER + STALKER,
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
	weapons = {""},
	conversationTemplate = "",
	attacks = merge(forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(dark_inquisitor, "dark_inquisitor")
