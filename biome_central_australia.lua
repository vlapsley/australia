-- mods/australia/biome_central_australia.lua

minetest.register_biome({
	name = "central_australia",
	--node_dust = "",
	node_top = "australia:red_dirt",
	depth_top = 1,
	node_filler = "australia:red_stone",
	depth_filler = 2,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	node_river_water = "australia:muddy_river_water_source",
	y_min = 36,
	y_max = 31000,
	heat_point = 80,
	humidity_point = 25,
})



--
-- Register ores
--

-- All mapgens except singlenode
-- Blob ore first to avoid other ores inside blobs

-- Uranium from Technic modpack: technic_worldgen mod
if minetest.get_modpath("technic_worldgen") then
	minetest.register_ore({
		ore_type        = "scatter",
		ore             = "technic:mineral_uranium",
		wherein         = "default:stone",
		clust_scarcity  = 20 * 20 * 20,
		clust_num_ores  = 6,
		clust_size      = 4,
		biomes          = {"central_australia"},
		y_min           = -64,
		y_max           = 64,
		noise_params    = {
			offset = 0,
			scale = 1,
			spread = {x = 100, y = 100, z = 100},
			seed = 421,
			octaves = 3,
			persist = 0.7
			},
		noise_threshold = 0.6,
	})
end



--
-- Decorations
--

local function register_dry_grass_decoration(offset, scale, length)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"australia:red_dirt"},
		sidelen = 16,
		noise_params = {
			offset = offset,
			scale = scale,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"central_australia"},
		y_min = 36,
		y_max = 190,
		decoration = "default:dry_grass_"..length,
	})
end

	-- Dry grasses
register_dry_grass_decoration(0.05, 0.01,  3)
register_dry_grass_decoration(0.07, -0.01, 2)
register_dry_grass_decoration(0.09, -0.03, 1)


	-- Mitchell Grass
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"australia:red_dirt"},
	sidelen = 80,
	fill_ratio = 0.05,
	biomes = {"central_australia"},
	y_min = 37,
	y_max = 180,
	decoration = "australia:mitchell_grass",
})

	-- Spinifex
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"australia:red_dirt"},
	sidelen = 80,
	fill_ratio = 0.05,
	biomes = {"central_australia"},
	y_min = 37,
	y_max = 170,
	decoration = "australia:spinifex",
})



--
-- Trees
--

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
	push(aus.schematics.coolabah_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"australia:red_dirt"},
		y_min = 36,
		y_max = 140,
		fill_ratio = (max_r-r+1)/20000,
		biomes = {"central_australia"},
		schematic = schem,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end

	-- Desert Oak
aus.schematics.desert_oak_tree = {}
local max_r = 8
local ht = 5
local fruit = nil
local limbs = nil
local tree = "australia:desert_oak_tree"
local leaves = "australia:desert_oak_leaves"
for r = 6,max_r do
	local schem = aus.generate_tree_schematic(6, {x=r, y=ht, z=r}, tree, leaves, fruit, limbs)
	push(aus.schematics.desert_oak_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"australia:red_dirt"},
		y_min = 36,
		y_max = 140,
		fill_ratio = (max_r-r+1)/15000,
		biomes = {"central_australia"},
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
	push(aus.schematics.quandong_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"australia:red_dirt"},
		y_min = 36,
		y_max = 130,
		fill_ratio = (max_r-r+1)/15000,
		biomes = {"central_australia"},
		schematic = schem,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end

	-- Wirewood
aus.schematics.wirewood_tree = {}
local max_r = 4
local ht = 4
local fruit = nil
local limbs = false
local tree = "australia:wirewood_tree"
local leaves = "australia:wirewood_leaves"
for r = 3,max_r do
	local schem = aus.generate_tree_schematic(2, {x=r, y=ht, z=r}, tree, leaves, fruit, limbs)
	push(aus.schematics.wirewood_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"australia:red_dirt"},
		y_min = 36,
		y_max = 150,
		fill_ratio = (max_r-r+1)/12000,
		biomes = {"central_australia"},
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
	push(aus.schematics.river_red_gum_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"australia:red_dirt"},
		y_min = 36,
		y_max = 140,
		fill_ratio = (max_r-r+1)/20000,
		biomes = {"central_australia"},
		schematic = schem,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end

	-- Sugar Gum
aus.schematics.sugar_gum_tree = {}
local max_r = 11
local ht = 10
local fruit = nil
local limbs = nil
local tree = "australia:sugar_gum_tree"
local leaves = "australia:sugar_gum_leaves"
for r = 9,max_r do
	local schem = aus.generate_tree_schematic(8, {x=r, y=ht, z=r}, tree, leaves, fruit, limbs)
	push(aus.schematics.sugar_gum_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"australia:red_dirt"},
		y_min = 36,
		y_max = 140,
		fill_ratio = (max_r-r+1)/20000,
		biomes = {"central_australia"},
		schematic = schem,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end

