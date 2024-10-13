-- mods/australia/biome_murray_darling_basin.lua

minetest.register_biome({
	name = "murray_darling_basin",
	--node_dust = "",
	node_top = "default:dirt_with_dry_grass",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 3,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	node_river_water = "australia:muddy_river_water_source",
	y_min = 36,
	y_max = 31000,
	heat_point = 60,
	humidity_point = 40,
})



--
-- Register ores
--

-- All mapgens except singlenode
-- Blob ore first to avoid other ores inside blobs



--
-- Decorations
--

local function register_grass_decoration(offset, scale, length)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_dry_grass"},
		sidelen = 16,
		noise_params = {
			offset = offset,
			scale = scale,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"murray_darling_basin"},
		y_min = 36,
		y_max = 200,
		decoration = "default:grass_"..length,
	})
end

local function register_dry_grass_decoration(offset, scale, length)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_dry_grass"},
		sidelen = 16,
		noise_params = {
			offset = offset,
			scale = scale,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"murray_darling_basin"},
		y_min = 36,
		y_max = 200,
		decoration = "default:dry_grass_"..length,
	})
end

	-- Grasses
register_grass_decoration(0.015,  0.045, 2)
register_grass_decoration(0.03,   0.03,  1)

	-- Dry grasses
register_dry_grass_decoration(0.01, 0.05,  5)
register_dry_grass_decoration(0.03, 0.03,  4)
register_dry_grass_decoration(0.05, 0.01,  3)
register_dry_grass_decoration(0.07, -0.01, 2)
register_dry_grass_decoration(0.09, -0.03, 1)


	-- Darling Lily
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_dry_grass"},
	sidelen = 80,
	fill_ratio = 0.02,
	biomes = {"murray_darling_basin"},
	y_min = 36,
	y_max = 200,
	decoration = "australia:darling_lily",
})

	-- Saltbush
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_dry_grass"},
	sidelen = 80,
	fill_ratio = 0.01,
	biomes = {"murray_darling_basin"},
	y_min = 36,
	y_max = 200,
	decoration = "australia:saltbush",
})

	-- Silver Daisy
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_dry_grass"},
	sidelen = 80,
	fill_ratio = 0.02,
	biomes = {"murray_darling_basin"},
	y_min = 36,
	y_max = 200,
	decoration = "australia:silver_daisy",
})



--
-- Logs
--

	-- River Red Gum Log
minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"dirt_with_dry_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0.0018,
		scale = 0.0011,
		spread = {x = 250, y = 250, z = 250},
		seed = 33,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"murray_darling_basin"},
	y_min = 36,
	y_max = 170,
	schematic = {
		size = {x = 3, y = 3, z = 1},
		data = {
			{name = "air", prob = 0},
			{name = "air", prob = 0},
			{name = "air", prob = 0},
			{name = "australia:river_red_gum_tree", param2 = 12, prob = 191},
			{name = "australia:river_red_gum_tree", param2 = 12},
			{name = "australia:river_red_gum_tree", param2 = 12, prob = 127},
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

	-- Black Box
aus.schematics.black_box_tree = {}
local max_r = 8
local ht = 8
local fruit = nil
local limbs = nil
local tree = "australia:black_box_tree"
local leaves = "australia:black_box_leaves"
for r = 6,max_r do
	local schem = aus.generate_big_tree_schematic(4, {x=r, y=ht, z=r}, tree, leaves, fruit, limbs)
	table.insert(aus.schematics.black_box_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_dry_grass"},
		y_min = 36,
		y_max = 150,
		fill_ratio = (max_r-r+1)/15000,
		biomes = {"murray_darling_basin"},
		schematic = schem,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end

	-- Black Wattle
aus.schematics.black_wattle_tree = {}
local max_r = 6
local ht = 8
local fruit = nil
local limbs = false
local tree = "australia:black_wattle_tree"
local leaves = "australia:black_wattle_leaves"
for r = 5,max_r do
	local schem = aus.generate_tree_schematic(4, {x=r, y=ht, z=r}, tree, leaves, fruit, limbs)
	table.insert(aus.schematics.black_wattle_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_dry_grass"},
		y_min = 36,
		y_max = 150,
		fill_ratio = (max_r-r+1)/15000,
		biomes = {"murray_darling_basin"},
		schematic = schem,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end

	-- Coolabah Tree
aus.schematics.coolabah_tree = {}
local max_r = 5
local ht = 7
local fruit = nil
local limbs = nil
local tree = "australia:coolabah_tree"
local leaves = "australia:coolabah_leaves"
for r = 4,max_r do
	local schem = aus.generate_tree_schematic(3, {x=r, y=ht, z=r}, tree, leaves, fruit, limbs)
	table.insert(aus.schematics.coolabah_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"australia:dirt_with_dry_grass"},
		y_min = 36,
		y_max = 140,
		fill_ratio = (max_r-r+1)/20000,
		biomes = {"murray_darling_basin"},
		schematic = schem,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end

	-- Golden Wattle
aus.schematics.golden_wattle_tree = {}
local max_r = 3
local ht = 3
local fruit = nil
local limbs = false
local tree = "australia:golden_wattle_tree"
local leaves = "australia:golden_wattle_leaves"
for r = 2,max_r do
	local schem = aus.generate_tree_schematic(2, {x=r, y=ht, z=r}, tree, leaves, fruit, limbs)
	table.insert(aus.schematics.golden_wattle_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_dry_grass"},
		y_min = 36,
		y_max = 150,
		fill_ratio = (max_r-r+1)/15000,
		biomes = {"murray_darling_basin"},
		schematic = schem,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end

	-- Desert Quandong
aus.schematics.quandong_tree = {}
local max_r = 4
local ht = 4
local fruit = "australia:quandong"
local limbs = false
local tree = "australia:quandong_tree"
local leaves = "australia:quandong_leaves"
for r = 3,max_r do
	local schem = aus.generate_tree_schematic(2, {x=r, y=ht, z=r}, tree, leaves, fruit, limbs)
	table.insert(aus.schematics.quandong_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_dry_grass"},
		y_min = 36,
		y_max = 150,
		fill_ratio = (max_r-r+1)/15000,
		biomes = {"murray_darling_basin"},
		schematic = schem,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end

	-- River Red Gum
aus.schematics.river_red_gum_tree = {}
local max_r = 13
local ht = 13
local fruit = nil
local limbs = nil
local tree = "australia:river_red_gum_tree"
local leaves = "australia:river_red_gum_leaves"
for r = 10,max_r do
	local schem = aus.generate_giant_tree_schematic(7, {x=r, y=ht, z=r}, tree, leaves, fruit, limbs)
	table.insert(aus.schematics.river_red_gum_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_dry_grass"},
		y_min = 36,
		y_max = 140,
		fill_ratio = (max_r-r+1)/10000,
		biomes = {"murray_darling_basin"},
		schematic = schem,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end

