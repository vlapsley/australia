-- mods/australia/biome_jarrah_karri_forests.lua

minetest.register_biome({
	name = "jarrah_karri_forests",
	--node_dust = "",
	node_top = "default:dirt_with_grass",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 3,
	node_stone = "default:sandstone",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	node_river_water = "australia:muddy_river_water_source",
	y_min = 4,
	y_max = 35,
	heat_point = 20,
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
	wherein         = {"default:stone", "default:sandstone"},
	clust_scarcity  = 16 * 16 * 16,
	clust_size      = 8,
	biomes          = {"jarrah_karri_forests"},
	y_min           = 4,
	y_max           = 35,
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
-- Decorations
--

local function register_grass_decoration(offset, scale, length)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = offset,
			scale = scale,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"jarrah_karri_forests"},
		y_min = 5,
		y_max = 31000,
		decoration = "default:grass_"..length,
	})
end

local function register_dry_grass_decoration(offset, scale, length)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = offset,
			scale = scale,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"jarrah_karri_forests"},
		y_min = 5,
		y_max = 31000,
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


	-- Couch Honeypot
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 80,
	fill_ratio = 0.02,
	biomes = {"jarrah_karri_forests"},
	decoration = "australia:couch_honeypot",
})


--
-- Trees
--

	-- Bull Banksia
aus.schematics.bull_banksia_tree = {}
local max_r = 4
local ht = 5
local fruit = nil
local limbs = false
local tree = "australia:bull_banksia_tree"
local leaves = "australia:bull_banksia_leaves"
for r = 3,max_r do
	local schem = aus.generate_tree_schematic(2, {x=r, y=ht, z=r}, tree, leaves, fruit, limbs)
	push(aus.schematics.bull_banksia_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 8,
		y_max = 35,
		fill_ratio = (max_r-r+1)/12000,
		biomes = {"jarrah_karri_forests"},
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
	push(aus.schematics.coolabah_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"australia:dirt_with_grass"},
		y_min = 8,
		y_max = 35,
		fill_ratio = (max_r-r+1)/20000,
		biomes = {"jarrah_karri_forests"},
		schematic = schem,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end

	-- Jarrah
aus.schematics.jarrah_tree = {}
local max_r = 10
local ht = 12
local fruit = nil
local limbs = nil
local tree = "australia:jarrah_tree"
local leaves = "australia:jarrah_leaves"
for r = 8,max_r do
	local schem = aus.generate_giant_tree_schematic(8, {x=r, y=ht, z=r}, tree, leaves, fruit, limbs)
	push(aus.schematics.jarrah_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 12,
		y_max = 35,
		fill_ratio = (max_r-r+1)/8000,
		biomes = {"jarrah_karri_forests"},
		schematic = schem,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end

	-- Karri
aus.schematics.karri_tree = {}
local max_r = 12
local ht = 10
local fruit = nil
local limbs = nil
local tree = "australia:karri_tree"
local leaves = "australia:karri_leaves"
for r = 10,max_r do
	local schem = aus.generate_giant_tree_schematic(20, {x=r, y=ht, z=r}, tree, leaves, fruit, limbs)
	push(aus.schematics.karri_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 12,
		y_max = 35,
		fill_ratio = (max_r-r+1)/10000,
		biomes = {"jarrah_karri_forests"},
		schematic = schem,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end

	-- Marri
aus.schematics.marri_tree = {}
local max_r = 10
local ht = 12
local fruit = nil
local limbs = nil
local tree = "australia:marri_tree"
local leaves = "australia:marri_leaves"
for r = 8,max_r do
	local schem = aus.generate_big_tree_schematic(8, {x=r, y=ht, z=r}, tree, leaves, fruit, limbs)
	push(aus.schematics.marri_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 12,
		y_max = 35,
		fill_ratio = (max_r-r+1)/10000,
		biomes = {"jarrah_karri_forests"},
		schematic = schem,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end

	-- Rottnest Island Pine
aus.schematics.rottnest_island_pine_tree = {}
local max_r = 3
local fruit = nil
local tree = "australia:rottnest_island_pine_tree"
local leaves = "australia:rottnest_island_pine_leaves"
for r = 2,max_r do
	local schem = aus.generate_conifer_schematic(3, 2, tree, leaves, fruit)
	push(aus.schematics.rottnest_island_pine_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 6,
		y_max = 20,
		fill_ratio = (max_r-r+1)/10000,
		biomes = {"jarrah_karri_forests"},
		schematic = schem,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end

	-- Swamp Paperbark
aus.schematics.swamp_paperbark_tree = {}
local max_r = 5
local ht = 9
local fruit = nil
local limbs = nil
local tree = "australia:swamp_paperbark_tree"
local leaves = "australia:swamp_paperbark_leaves"
for r = 4,max_r do
	local schem = aus.generate_tree_schematic(3, {x=r, y=ht, z=r}, tree, leaves, fruit, limbs)
	push(aus.schematics.swamp_paperbark_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 7,
		y_max = 25,
		fill_ratio = (max_r-r+1)/15000,
		biomes = {"jarrah_karri_forests"},
		schematic = schem,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end

