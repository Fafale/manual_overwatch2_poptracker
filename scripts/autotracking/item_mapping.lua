-- use this file to map the AP item ids to your items
-- first value is the code of the target item and the second is the item type override. The third value is an optional increment multiplier for consumables. (feel free to expand the table with any other values you might need (i.e. special initial values, etc.)!)
-- here are the SM items as an example: https://github.com/Cyb3RGER/sm_ap_tracker/blob/main/scripts/autotracking/item_mapping.lua
BASE_ITEM_ID = 0
ITEM_MAPPING = {
	-- Medals
	[1]					= {} -- Ultimate Medal
	[2]					= { "Medal", 				"consumable"},

	-- Hero Mastery
	[45]				= { "Mastery_Mercy", 		"consumable"},
	[46]				= { "Mastery_Reinhardt", 	"consumable"},
	[47]				= { "Mastery_Tracer", 		"consumable"},
	[48]				= { "Mastery_Sojourn", 		"consumable"},
	[49]				= { "Mastery_Winston", 		"consumable"},
	[50]				= { "Mastery_DVa", 			"consumable"},
	[51]				= { "Mastery_Echo", 		"consumable"},
	[52]				= { "Mastery_Genji", 		"consumable"},
	[53]				= { "Mastery_Lucio", 		"consumable"},
	[54]				= { "Mastery_Mei", 			"consumable"},
	[55]				= { "Mastery_Soldier 76", 	"consumable"},
	[56]				= { "Mastery_Kiriko", 		"consumable"},
	[57]				= { "Mastery_Cassidy", 		"consumable"},
	[58]				= { "Mastery_Brigitte", 	"consumable"},

	-- Heroes
	[34]				= { "Ana", 				"toggle"},
  	[16]				= { "Ashe", 			"toggle"},
  	[35]				= { "Baptiste", 		"toggle"},
  	[17]				= { "Bastion", 			"toggle"},
  	[36]				= { "Brigitte", 		"toggle"},
  	[18]				= { "Cassidy", 			"toggle"},
  	[3]					= { "DVa", 				"toggle"},
  	[4]					= { "Doomfist", 		"toggle"},
  	[19]				= { "Echo", 			"toggle"},
  	[20]				= { "Genji", 			"toggle"},
  	[21]				= { "Hanzo", 			"toggle"},
  	[5]					= { "Hazard", 			"toggle"},
  	[37]				= { "Illari", 			"toggle"},
  	[6]					= { "Junker Queen", 	"toggle"},
  	[22]				= { "Junkrat", 			"toggle"},
  	[38]				= { "Juno", 			"toggle"},
  	[39]				= { "Kiriko", 			"toggle"},
  	[40]				= { "Lifeweaver", 		"toggle"},
  	[41]				= { "Lucio", 			"toggle"},
  	[7]					= { "Mauga", 			"toggle"},
  	[23]				= { "Mei", 	 			"toggle"},
  	[42]				= { "Mercy", 			"toggle"},
  	[43]				= { "Moira", 			"toggle"},
  	[8]					= { "Orisa", 			"toggle"},
  	[24]				= { "Pharah", 			"toggle"},
  	[9]					= { "Ramattra", 		"toggle"},
  	[25]				= { "Reaper", 			"toggle"},
  	[10]				= { "Reinhardt", 		"toggle"},
  	[11]				= { "Roadhog", 			"toggle"},
  	[12]				= { "Sigma", 			"toggle"},
  	[26]				= { "Sojourn", 			"toggle"},
  	[27]				= { "Soldier 76", 		"toggle"},
  	[28]				= { "Sombra", 			"toggle"},
  	[29]				= { "Symmetra", 		"toggle"},
  	[30]				= { "Torbjorn", 		"toggle"},
  	[31]				= { "Tracer", 			"toggle"},
  	[32]				= { "Venture", 			"toggle"},
  	[33]				= { "Widowmaker", 		"toggle"},
  	[13]				= { "Winston", 			"toggle"},
  	[14]				= { "Wrecking Ball", 	"toggle"},
  	[15]				= { "Zarya", 			"toggle"},
  	[44]				= { "Zenyatta", 		"toggle"},

	-- Deathmatch Modes
  	[59] = { "Solo_Deathmatch", "toggle"},
  	[60] = { "Team_Deathmatch", "toggle"}

	-- Filler
  	[61] = {}, -- Nothing (Filler item)
}
