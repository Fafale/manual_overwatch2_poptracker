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
		-- Tanks
	[3]					= {{ "Hero_DVa", 			"toggle"}, { "Category_Tank",		"consumable"}},
	[4]					= {{ "Hero_Doomfist", 		"toggle"}, { "Category_Tank",		"consumable"}},
	[5]					= {{ "Hero_Hazard", 		"toggle"}, { "Category_Tank",		"consumable"}},
	[6]					= {{ "Hero_Junker Queen", 	"toggle"}, { "Category_Tank",		"consumable"}},
	[7]					= {{ "Hero_Mauga", 			"toggle"}, { "Category_Tank",		"consumable"}},
	[8]					= {{ "Hero_Orisa", 			"toggle"}, { "Category_Tank",		"consumable"}},
	[9]					= {{ "Hero_Ramattra", 		"toggle"}, { "Category_Tank",		"consumable"}},
	[10]				= {{ "Hero_Reinhardt", 		"toggle"}, { "Category_Tank",		"consumable"}},
	[11]				= {{ "Hero_Roadhog", 		"toggle"}, { "Category_Tank",		"consumable"}},
	[12]				= {{ "Hero_Sigma", 			"toggle"}, { "Category_Tank",		"consumable"}},
	[13]				= {{ "Hero_Winston", 		"toggle"}, { "Category_Tank",		"consumable"}},
	[14]				= {{ "Hero_Wrecking Ball", 	"toggle"}, { "Category_Tank",		"consumable"}},
	[15]				= {{ "Hero_Zarya", 			"toggle"}, { "Category_Tank",		"consumable"}},
	
	-- Damages
	[16]				= {{ "Hero_Ashe", 			"toggle"}, { "Category_Damage", 	"consumable"}},
	[17]				= {{ "Hero_Bastion", 		"toggle"}, { "Category_Damage", 	"consumable"}},
	[18]				= {{ "Hero_Cassidy", 		"toggle"}, { "Category_Damage", 	"consumable"}},
	[19]				= {{ "Hero_Echo", 			"toggle"}, { "Category_Damage", 	"consumable"}},
	[61]				= {{ "Hero_Freja", 			"toggle"}, { "Category_Damage",		"consumable"}},
	[20]				= {{ "Hero_Genji", 			"toggle"}, { "Category_Damage", 	"consumable"}},
	[21]				= {{ "Hero_Hanzo", 			"toggle"}, { "Category_Damage", 	"consumable"}},
	[22]				= {{ "Hero_Junkrat", 		"toggle"}, { "Category_Damage", 	"consumable"}},
	[23]				= {{ "Hero_Mei", 	 		"toggle"}, { "Category_Damage", 	"consumable"}},
	[24]				= {{ "Hero_Pharah", 		"toggle"}, { "Category_Damage", 	"consumable"}},
	[25]				= {{ "Hero_Reaper", 		"toggle"}, { "Category_Damage", 	"consumable"}},
	[26]				= {{ "Hero_Sojourn", 		"toggle"}, { "Category_Damage", 	"consumable"}},
	[27]				= {{ "Hero_Soldier 76", 	"toggle"}, { "Category_Damage", 	"consumable"}},
	[28]				= {{ "Hero_Sombra", 		"toggle"}, { "Category_Damage", 	"consumable"}},
	[29]				= {{ "Hero_Symmetra", 		"toggle"}, { "Category_Damage", 	"consumable"}},
	[30]				= {{ "Hero_Torbjorn", 		"toggle"}, { "Category_Damage", 	"consumable"}},
	[31]				= {{ "Hero_Tracer", 		"toggle"}, { "Category_Damage", 	"consumable"}},
	[32]				= {{ "Hero_Venture", 		"toggle"}, { "Category_Damage", 	"consumable"}},
	[33]				= {{ "Hero_Widowmaker", 	"toggle"}, { "Category_Damage", 	"consumable"}},

		-- Supports
	[34]				= {{ "Hero_Ana", 			"toggle"}, { "Category_Support", 	"consumable"}},
  	[35]				= {{ "Hero_Baptiste", 		"toggle"}, { "Category_Support", 	"consumable"}},
  	[36]				= {{ "Hero_Brigitte", 		"toggle"}, { "Category_Support", 	"consumable"}},
  	[37]				= {{ "Hero_Illari", 		"toggle"}, { "Category_Support", 	"consumable"}},
  	[38]				= {{ "Hero_Juno", 			"toggle"}, { "Category_Support", 	"consumable"}},
  	[39]				= {{ "Hero_Kiriko", 		"toggle"}, { "Category_Support", 	"consumable"}},
  	[40]				= {{ "Hero_Lifeweaver", 	"toggle"}, { "Category_Support", 	"consumable"}},
  	[41]				= {{ "Hero_Lucio", 			"toggle"}, { "Category_Support", 	"consumable"}},
  	[42]				= {{ "Hero_Mercy", 			"toggle"}, { "Category_Support", 	"consumable"}},
  	[43]				= {{ "Hero_Moira", 			"toggle"}, { "Category_Support", 	"consumable"}},
  	[44]				= {{ "Hero_Zenyatta", 		"toggle"}, { "Category_Support", 	"consumable"}},

	-- Deathmatch Modes
  	[59] = {{ "Solo_Deathmatch", "toggle"}},
  	[60] = {{ "Team_Deathmatch", "toggle"}},

	-- Filler
  	[62] = {}, -- Nothing (Filler item)
}
