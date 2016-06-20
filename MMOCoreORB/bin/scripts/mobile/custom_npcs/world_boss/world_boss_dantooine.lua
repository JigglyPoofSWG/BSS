world_boss_dantooine = Creature:new {
	customName = "Fizeh Maktah (Dantooine World Boss)",
	socialGroup = "self",
	faction = "",
	level = 500,
	chanceHit = 30,
	damageMin = 645,
	damageMax = 1500,
	baseXp = 55000,
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
	ferocity = 0,
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
				{group = "holocron_dark", chance = 2500000},
				{group = "holocron_light", chance = 2500000},
				{group = "pearls_flawless", chance = 2500000},
				{group = "rifles", chance = 500000},
				{group = "pistols", chance = 500000},
				{group = "melee_weapons", chance = 1000000},
				{group = "carbines", chance = 500000}
			}
	},

	{
	groups = {
		{group = "armor_attachments", chance = 4400000},
		{group = "clothing_attachments", chance = 4500000},			
		{group = "crystals_ancient", chance = 100000},
				},
	lootChance = 10000000
		}
	},	
	weapons = {"dark_jedi_weapons_gen4"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(world_boss_dantooine, "world_boss_dantooine")
