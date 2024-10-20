-- Nypa fruticans: Mangrove Palm
minetest.register_node("australia:mangrove_palm_trunk", {
	description = "Nypa fruticans: Mangrove Palm Trunk",
	tiles = {"aus_mangrove_palm_trunk.png", "aus_mangrove_mud.png",
		"aus_mangrove_palm_trunk.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy = 2, flammable = 2, oddly_breakable_by_hand = 1, tree = 1},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
})

minetest.register_node("australia:mangrove_palm_sapling", {
	description = "Nypa fruticans: Mangrove Palm Seedling",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"aus_mangrove_palm_sapling.png"},
	inventory_image = "aus_mangrove_palm_sapling.png",
	wield_image = "aus_mangrove_palm_sapling.png",
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

minetest.register_node("australia:mangrove_palm_leaves", {
	description = "Nypa fruticans: Mangrove Palm Leaves",
	drawtype = "mesh",
	mesh = "aus_nypa_fruticans_leaves.obj",
	tiles = {"aus_mangrove_palm_leaves.png"},
	inventory_image = "aus_mangrove_palm_leaves.png",
	wield_image = "aus_mangrove_palm_leaves.png",
	use_texture_alpha = "clip",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {snappy = 3, flammable = 2, attached_node = 1, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"australia:mangrove_palm_sapling 2"}, rarity = 10 },
			{items = {"australia:mangrove_palm_leaves"} }
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
})
minetest.register_alias("australia:mangrove_palm_leaf_bot", "australia:mangrove_palm_leaves")

minetest.register_lbm({
	label = "Remove australia:mangrove_palm_leaf_top nodes",
	name = "australia:remove_mangrove_palm_leaf_top_nodes",
	nodenames = {"australia:mangrove_palm_leaf_top"},
	run_at_every_load = false,
	action = function(pos, node, dtime_s)
		minetest.remove_node(pos)
	end,
})

aus.schematics.mangrove_palm = {
	{
		size = { x = 1, y = 3, z = 1},
		data = {
			{ name = "ignore", param1 = 0, param2 = 0 },
			{ name = "australia:mangrove_palm_trunk", param1 = 255, param2 = 0 },
			{ name = "australia:mangrove_palm_leaves", param1 = 255, param2 = 0 },
		},
	}
}
