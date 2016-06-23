boss_chewbacca = Creature:new {
	objectName = "@mob/creature_names:chewbacca",
	socialGroup = "rebel",
	faction = "rebel",
	level = 200,
	chanceHit = 1,
	damageMin = 945,
	damageMax = 1400,
	baseXp = 19429,
	baseHAM = 280000,
	baseHAMmax = 320000,
	armor = 2,
	resists = {70,70,70,70,70,70,70,70,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.15,

	templates = {"object/mobile/chewbacca.iff"},
	lootGroups = {
		{
			groups = {
				{group = "holocron_dark", chance = 600000},
				{group = "holocron_light", chance = 600000},
				{group = "crystals_premium", chance = 600000},
				{group = "rifles", chance = 1500000},
				{group = "pistols", chance = 1500000},
				{group = "melee_weapons", chance = 1500000},
				{group = "armor_attachments", chance = 1100000},
				{group = "clothing_attachments", chance = 1100000},
				{group = "carbines", chance = 1500000}
			}
		}
	},
	weapons = {"chewbacca_weapons"},
	attacks = merge(brawlermaster,marksmanmaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(boss_chewbacca, "boss_chewbacca")
