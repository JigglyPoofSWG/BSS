global_rogue_jedi_camp_rogue_jedi_theater = Lair:new {
	mobiles = {
		{"rogue_jedi_knight",2},
		{"rogue_jedi_padawan",4},
		{"rogue_jedi_master",1}
		},
	spawnLimit = 14,
	buildingsVeryEasy = {"object/building/poi/dathomir_nightsister_small1.iff","object/building/poi/dathomir_nightsister_small2.iff","object/building/poi/dathomir_nightsister_small3.iff"},
	buildingsEasy = {"object/building/poi/dathomir_nightsister_small1.iff","object/building/poi/dathomir_nightsister_small2.iff","object/building/poi/dathomir_nightsister_small3.iff"},
	buildingsMedium = {"object/building/poi/dathomir_nightsister_small1.iff","object/building/poi/dathomir_nightsister_small2.iff","object/building/poi/dathomir_nightsister_small3.iff"},
	buildingsHard = {"object/building/poi/dathomir_nightsister_small1.iff","object/building/poi/dathomir_nightsister_small2.iff","object/building/poi/dathomir_nightsister_small3.iff"},
	buildingsVeryHard = {"object/building/poi/dathomir_nightsister_small1.iff","object/building/poi/dathomir_nightsister_small2.iff","object/building/poi/dathomir_nightsister_small3.iff"},
	mobType = "npc",
	buildingType = "theater"
}

addLairTemplate("global_rogue_jedi_camp_rogue_jedi_theater", global_rogue_jedi_camp_rogue_jedi_theater)
