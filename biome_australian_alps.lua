-- mods/australia/biome_australian_alps.lua

minetest.register_biome({
	name = "australian_alps",
	node_dust = "default:snow",
	node_top = "default:snowblock",
	depth_top = 2,
	node_filler = "default:dirt_with_snow",
	depth_filler = 1,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	--node_river_water = "",
	y_min = 150,
	y_max = 31000,
	heat_point = 10,
	humidity_point = 50,
})



--
-- Register ores
--

-- All mapgens except singlenode
-- Blob ore first to avoid other ores inside blobs

	-- Bluestone (Basalt)
minetest.register_ore({
	ore_type        = "blob",
	ore             = "australia:bluestone",
	wherein         = {"default:stone"},
	clust_scarcity  = 16 * 16 * 16,
	clust_size      = 8,
	biomes          = {"australian_alps"},
	y_min           = 150,
	y_max           = 31000,
	noise_threshold = 0.0,
	noise_params    = {
		offset = 0.5,
		scale = 0.2,
		spread = {x = 5, y = 5, z = 5},
		seed = 677,
		octaves = 1,
		persist = 0.0
	},
})



--
-- Logs
--

	-- Snow Gum Log
minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:snowblock"},
	sidelen = 16,
	noise_params = {
		offset = 0.0018,
		scale = 0.0011,
		spread = {x = 250, y = 250, z = 250},
		seed = 34,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"australian_alps"},
	y_min = 150,
	y_max = 170,
	schematic = {
		size = {x = 3, y = 3, z = 1},
		data = {
			{name = "air", prob = 0},
			{name = "air", prob = 0},
			{name = "air", prob = 0},
			{name = "australia:snow_gum_tree", param2 = 12, prob = 191},
			{name = "australia:snow_gum_tree", param2 = 12},
			{name = "australia:snow_gum_tree", param2 = 12, prob = 127},
			{name = "air", prob = 0},
			{name = "flowers:mushroom_brown", prob = 63},
			{name = "air", prob = 0},
		},
	},
	flags = "place_center_x",
	rotation = "random",
})



--
-- Trees
--

	-- Snow Gum
aus.schematics.snow_gum_tree = {}
local max_r = 4
local ht = 4
local fruit = nil
local limbs = nil
local tree = "australia:snow_gum_tree"
local leaves = "australia:snow_gum_leaves"
for r = 3,max_r do
	local schem = aus.generate_tree_schematic(1, {x=r, y=ht, z=r}, tree, leaves, fruit, limbs)
	table.insert(aus.schematics.snow_gum_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:snowblock"},
		y_min = 150,
		y_max = 180,
		fill_ratio = (max_r-r+1)/2500,
		biomes = {"australian_alps"},
		schematic = schem,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end

