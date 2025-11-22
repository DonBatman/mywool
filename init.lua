local dyes = {
				{"peachpuff", 	"Peachpuff", 	"#FFDAB9", 	"white", 	"orange"},
				{"navy", 		"Navy", 		"#000080", 	"blue", 	"black"},
				{"coral", 		"Coral", 		"#FF7F50", 	"grey", 	"orange"},
				{"khaki", 		"Khaki", 		"#F0E68C", 	"white", 	"yellow"},
				{"lime", 		"Lime", 		"#00FF00", 	"white", 	"green"},
				{"light_pink", 	"Light Pink", 	"#FFB6C1", 	"white", 	"pink"},
				{"light_grey", 	"Light Grey", 	"#D3D3D3", 	"white", 	"grey"},
				{"purple", 		"Purple", 		"#800080", 	"white", 	"violet"},
				{"maroon", 		"Maroon", 		"#800000", 	"red", 		"black"},
				{"aquamarine", 	"Aqua Marine", 	"#7FFFD4", 	"cyan", 	"green"},
				{"chocolate", 	"Chocolate", 	"#D2691E", 	"orange", 	"black"},
				{"crimson", 	"Crimson", 		"#DC143C", 	"white", 	"red"},
				{"olive", 		"Olive", 		"#808000", 	"green", 	"brown"},
				{"white_smoke", "White Smoke", 	"#F5F5F5", 	"white", 	"white"},
				{"mistyrose", 	"Misty Rose", 	"#FFE4E1", 	"grey", 	"pink"},
				{"orchid", 		"Orchid", 		"#DA70D6", 	"grey", 	"violet"},
			 }
for i in ipairs(dyes) do
	local nam = dyes[i][1]
	local des = dyes[i][2]
	local img = dyes[i][3]
	local cr1 = dyes[i][4]
	local cr2 = dyes[i][5]
--wool
core.register_node("mywool:"..nam,{
	description = des.." Wool",
	tiles = {"mywool_"..nam..".png"},
	is_ground_content = false,
	groups = {snappy = 2, choppy = 2, oddly_breakable_by_hand = 3,
				flammable = 3, wool = 1},
	sounds = default.node_sound_defaults(),
})
--wool craft
minetest.register_craft{
	type = "shapeless",
	output = "mywool:" .. nam,
	recipe = {"wool:white", "mydye:"..nam},
}
end

