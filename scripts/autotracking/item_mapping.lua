-- use this file to map the AP item ids to your items
-- first value is the code of the target item and the second is the item type override. The third value is an optional increment multiplier for consumables. (feel free to expand the table with any other values you might need (i.e. special initial values, etc.)!)
-- here are the SM items as an example: https://github.com/Cyb3RGER/sm_ap_tracker/blob/main/scripts/autotracking/item_mapping.lua
ITEM_MAPPING = {
	-- Medals
	[1]					= {}, -- Ultimate Medal
	[2]					= {{ "Medal", 				"consumable"}},

	-- Hero Mastery
	[45]				= {{ "Mastery_Mercy", 		"consumable"}},
	[46]				= {{ "Mastery_Reinhardt", 	"consumable"}},
	[47]				= {{ "Mastery_Tracer", 		"consumable"}},
	[48]				= {{ "Mastery_Sojourn", 	"consumable"}},
	[49]				= {{ "Mastery_Winston", 	"consumable"}},
	[50]				= {{ "Mastery_DVa", 		"consumable"}},
	[51]				= {{ "Mastery_Echo", 		"consumable"}},
	[52]				= {{ "Mastery_Genji", 		"consumable"}},
	[53]				= {{ "Mastery_Lucio", 		"consumable"}},
	[54]				= {{ "Mastery_Mei", 		"consumable"}},
	[55]				= {{ "Mastery_Soldier 76", 	"consumable"}},
	[56]				= {{ "Mastery_Kiriko", 		"consumable"}},
	[57]				= {{ "Mastery_Cassidy", 	"consumable"}},
	[58]				= {{ "Mastery_Brigitte", 	"consumable"}},

	-- Heroes
	[34]				= {{ "Hero_Ana", 			"toggle"}},
  	[16]				= {{ "Hero_Ashe", 			"toggle"}},
  	[35]				= {{ "Hero_Baptiste", 		"toggle"}},
  	[17]				= {{ "Hero_Bastion", 		"toggle"}},
  	[36]				= {{ "Hero_Brigitte", 		"toggle"}},
  	[18]				= {{ "Hero_Cassidy", 		"toggle"}},
  	[3]					= {{ "Hero_DVa", 			"toggle"}},
  	[4]					= {{ "Hero_Doomfist", 		"toggle"}},
  	[19]				= {{ "Hero_Echo", 			"toggle"}},
  	[20]				= {{ "Hero_Genji", 			"toggle"}},
  	[21]				= {{ "Hero_Hanzo", 			"toggle"}},
  	[5]					= {{ "Hero_Hazard", 		"toggle"}},
  	[37]				= {{ "Hero_Illari", 		"toggle"}},
  	[6]					= {{ "Hero_Junker Queen", 	"toggle"}},
  	[22]				= {{ "Hero_Junkrat", 		"toggle"}},
  	[38]				= {{ "Hero_Juno", 			"toggle"}},
  	[39]				= {{ "Hero_Kiriko", 		"toggle"}},
  	[40]				= {{ "Hero_Lifeweaver", 	"toggle"}},
  	[41]				= {{ "Hero_Lucio", 			"toggle"}},
  	[7]					= {{ "Hero_Mauga", 			"toggle"}},
  	[23]				= {{ "Hero_Mei", 	 		"toggle"}},
  	[42]				= {{ "Hero_Mercy", 			"toggle"}},
  	[43]				= {{ "Hero_Moira", 			"toggle"}},
  	[8]					= {{ "Hero_Orisa", 			"toggle"}},
  	[24]				= {{ "Hero_Pharah", 		"toggle"}},
  	[9]					= {{ "Hero_Ramattra", 		"toggle"}},
  	[25]				= {{ "Hero_Reaper", 		"toggle"}},
  	[10]				= {{ "Hero_Reinhardt", 		"toggle"}},
  	[11]				= {{ "Hero_Roadhog", 		"toggle"}},
  	[12]				= {{ "Hero_Sigma", 			"toggle"}},
  	[26]				= {{ "Hero_Sojourn", 		"toggle"}},
  	[27]				= {{ "Hero_Soldier 76", 	"toggle"}},
  	[28]				= {{ "Hero_Sombra", 		"toggle"}},
  	[29]				= {{ "Hero_Symmetra", 		"toggle"}},
  	[30]				= {{ "Hero_Torbjorn", 		"toggle"}},
  	[31]				= {{ "Hero_Tracer", 		"toggle"}},
  	[32]				= {{ "Hero_Venture", 		"toggle"}},
  	[33]				= {{ "Hero_Widowmaker", 	"toggle"}},
  	[13]				= {{ "Hero_Winston", 		"toggle"}},
  	[14]				= {{ "Hero_Wrecking Ball", 	"toggle"}},
  	[15]				= {{ "Hero_Zarya", 			"toggle"}},
  	[44]				= {{ "Hero_Zenyatta", 		"toggle"}},

	-- Deathmatch Modes
  	[59] = {{ "Solo_Deathmatch", "toggle"}},
  	[60] = {{ "Team_Deathmatch", "toggle"}},

	-- Filler
  	[61] = {}, -- Nothing (Filler item)
}
