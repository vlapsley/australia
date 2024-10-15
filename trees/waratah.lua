-- Telopea speciosissima: Waratah
minetest.register_node("australia:waratah_sapling", {
	description = "Telopea speciosissima: Waratah Sapling",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"aus_waratah_sapling.png"},
	inventory_image = "aus_waratah_sapling.png",
	wield_image = "aus_waratah_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
	},
	groups = {snappy=2,dig_immediate=3,flammable=2,attached_node=1,sapling=1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("australia:waratah", {
	description = "Telopea speciosissima: Waratah Leaves",
	drawtype = "allfaces_optional",
	visual_scale = 1.0,
	tiles = { "aus_waratah.png"},
	inventory_image = "aus_waratah.png",
	wield_image = "aus_waratah.png",
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {snappy = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"australia:waratah_sapling"}, rarity = 10 },
			{items = {"australia:waratah"} }
		}
	},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("australia:waratah_stem", {
	description = "Telopea speciosissima: Waratah Stem",
	drawtype = "plantlike",
	visual_scale = 1.41,
	tiles = {"aus_waratah_stem.png"},
	inventory_image = "aus_waratah_stem.png",
	wield_image = "aus_waratah_stem.png",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -0.5, -7 / 16, 7 / 16, 0.5, 7 / 16},
	},
})

minetest.register_craft({
	output = "default:stick",
	recipe = {
		{"australia:waratah_stem"},
	}
})

local waratah_leaves_node_name = "australia:waratah"
local ignore_node_name = "ignore"

aus.schematics.waratah = {
	{
		size = { x = 3, y = 3, z = 3},
		data = {
			{ name = ignore_node_name,         prob = 0,   param2 = 0 },
			{ name = ignore_node_name,         prob = 0,   param2 = 0 },
			{ name = ignore_node_name,         prob = 0,   param2 = 0 },
			{ name = waratah_leaves_node_name, prob = 192, param2 = 0 },
			{ name = waratah_leaves_node_name, prob = 255, param2 = 0 },
			{ name = waratah_leaves_node_name, prob = 192, param2 = 0 },
			{ name = waratah_leaves_node_name, prob = 128, param2 = 0 },
			{ name = waratah_leaves_node_name, prob = 192, param2 = 0 },
			{ name = waratah_leaves_node_name, prob = 128, param2 = 0 },
			{ name = ignore_node_name,         prob = 0,   param2 = 0 },
			{ name = ignore_node_name,         prob = 0,   param2 = 0 },
			{ name = ignore_node_name,         prob = 0,   param2 = 0 },
			{ name = waratah_leaves_node_name, prob = 255, param2 = 0 },
			{ name = "australia:waratah_stem", prob = 255, param2 = 0 },
			{ name = waratah_leaves_node_name, prob = 255, param2 = 0 },
			{ name = waratah_leaves_node_name, prob = 192, param2 = 0 },
			{ name = waratah_leaves_node_name, prob = 255, param2 = 0 },
			{ name = waratah_leaves_node_name, prob = 192, param2 = 0 },
			{ name = ignore_node_name,         prob = 0,   param2 = 0 },
			{ name = ignore_node_name,         prob = 0,   param2 = 0 },
			{ name = ignore_node_name,         prob = 0,   param2 = 0 },
			{ name = waratah_leaves_node_name, prob = 192, param2 = 0 },
			{ name = waratah_leaves_node_name, prob = 255, param2 = 0 },
			{ name = waratah_leaves_node_name, prob = 192, param2 = 0 },
			{ name = waratah_leaves_node_name, prob = 128, param2 = 0 },
			{ name = waratah_leaves_node_name, prob = 192, param2 = 0 },
			{ name = waratah_leaves_node_name, prob = 128, param2 = 0 },
		},
	}
}
