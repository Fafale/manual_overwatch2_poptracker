-- use this file to map the AP item ids to your items
-- first value is the code of the target item and the second is the item type override. The third value is an optional increment multiplier for consumables. (feel free to expand the table with any other values you might need (i.e. special initial values, etc.)!)
-- here are the SM items as an example: https://github.com/Cyb3RGER/sm_ap_tracker/blob/main/scripts/autotracking/item_mapping.lua
BASE_ITEM_ID = 0
ITEM_MAPPING = {
	-- Medals
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


}
