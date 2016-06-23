boss_palpatine = Creature:new {
	objectName = "@theme_park_name:emperor_palpatine",
	socialGroup = "imperial",
	faction = "imperial",
	level = 500,
	chanceHit = 45,
	damageMin = 2045,
	damageMax = 3000,
	baseXp = 109429,
	baseHAM = 2400000,
	baseHAMmax = 2530000,
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
	ferocity = 30,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/palpatine.iff"},
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
				{group = "armor_attachments", chance = 4400000},
				{group = "clothing_attachments", chance = 4500000},
				{group = "crystals_ancient", chance = 100000}
				},
				lootChance = 10000000
		},
		{
		groups = {
				{group = "rifles", chance = 2500000},
				{group = "pistols", chance = 2500000},
				{group = "melee_weapons", chance = 3500000},
				{group = "carbines", chance = 2500000},
				},
				lootChance = 10000000
		},
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
				{group = "armor_attachments", chance = 4400000},
				{group = "clothing_attachments", chance = 4500000},
				{group = "crystals_ancient", chance = 100000}
				},
				lootChance = 10000000
		},
		{
		groups = {
				{group = "rifles", chance = 2500000},
				{group = "pistols", chance = 2500000},
				{group = "melee_weapons", chance = 3500000},
				{group = "carbines", chance = 2500000},
				},
				lootChance = 10000000
		},
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
				{group = "armor_attachments", chance = 4400000},
				{group = "clothing_attachments", chance = 4500000},
				{group = "crystals_ancient", chance = 100000}
				},
				lootChance = 10000000
		},
		{
		groups = {
				{group = "rifles", chance = 2500000},
				{group = "pistols", chance = 2500000},
				{group = "melee_weapons", chance = 3500000},
				{group = "carbines", chance = 2500000},
				},
				lootChance = 10000000
		}
		
	},
	weapons = {"dark_jedi_weapons_gen4"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcepowermaster)
}
CreatureTemplates:addCreatureTemplate(boss_palpatine, "boss_palpatine")
