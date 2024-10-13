-- mods/australia/biome_eastern_coasts.lua

minetest.register_biome({
	name = "eastern_coasts",
	--node_dust = "",
	node_top = "default:dirt_with_grass",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 3,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	node_river_water = "australia:muddy_river_water_source",
	y_min = 4,
	y_max = 35,
	heat_point = 35,
	humidity_point = 60,
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
	biomes          = {"eastern_coasts"},
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

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "default:stone_with_coal",
	wherein        = "default:stone",
	clust_scarcity = 24 * 24 * 24,
	clust_num_ores = 24,
	clust_size     = 5,
	biomes         = {"eastern_coasts"},
	y_min          = -64,
	y_max          = 35,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "default:coalblock",
	wherein        = "default:stone",
	clust_scarcity = 48 * 48 * 48,
	clust_num_ores = 8,
	clust_size     = 3,
	biomes         = {"eastern_coasts"},
	y_min          = -64,
	y_max          = 35,
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
		biomes = {"eastern_coasts"},
		y_min = 4,
		y_max = 35,
		decoration = "default:grass_"..length,
	})
end

	-- Grasses
register_grass_decoration(-0.03,  0.09,  5)
register_grass_decoration(-0.015, 0.075, 4)
register_grass_decoration(0,      0.06,  3)
register_grass_decoration(0.015,  0.045, 2)
register_grass_decoration(0.03,   0.03,  1)


	-- Waratah
minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:dirt_with_grass"},
	sidelen = 80,
	fill_ratio = 0.005,
	biomes = {"eastern_coasts"},
	y_min = 6,
	y_max = 35,
	schematic = {
		size = { x = 2, y = 3, z = 2},
		data = {
			{ name = "ignore", param1 = 0, param2 = 0 },
			{ name = "australia:waratah", param1 = 255, param2 = 0 },
			{ name = "australia:waratah", param1 = 255, param2 = 0 },
			{ name = "australia:waratah", param1 = 255, param2 = 0 },
			{ name = "ignore", param1 = 0, param2 = 0 },
			{ name = "australia:waratah", param1 = 255, param2 = 0 },
			{ name = "australia:waratah", param1 = 255, param2 = 0 },
			{ name = "australia:waratah", param1 = 255, param2 = 0 },
			{ name = "ignore", param1 = 0, param2 = 0 },
			{ name = "australia:waratah", param1 = 255, param2 = 0 },
			{ name = "australia:waratah", param1 = 255, param2 = 0 },
			{ name = "australia:waratah", param1 = 255, param2 = 0 },
			{ name = "ignore", param1 = 0, param2 = 0 },
			{ name = "australia:waratah", param1 = 255, param2 = 0 },
			{ name = "australia:waratah", param1 = 255, param2 = 0 },
			{ name = "australia:waratah", param1 = 255, param2 = 0 },
		},
	},
	flags = "force_placement",
})



--
-- Trees
--

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
		place_on = {"default:dirt_with_grass"},
		y_min = 7,
		y_max = 35,
		fill_ratio = (max_r-r+1)/15000,
		biomes = {"eastern_coasts"},
		schematic = schem,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end

	-- Australian Cherry
aus.schematics.cherry_tree = {}
local max_r = 3
local fruit = "australia:cherry"
local tree = "australia:cherry_tree"
local leaves = "australia:cherry_leaves"
for r = 2,max_r do
	local schem = aus.generate_conifer_schematic(3, 2, tree, leaves, fruit)
	table.insert(aus.schematics.cherry_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 7,
		y_max = 35,
		fill_ratio = (max_r-r+1)/15000,
		biomes = {"eastern_coasts"},
		schematic = schem,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end

	-- Coast Banksia (big)
aus.schematics.coast_banksia_big_tree = {}
local max_r = 6
local ht = 7
local fruit = nil
local limbs = false
local tree = "australia:coast_banksia_tree"
local leaves = "australia:coast_banksia_leaves"
for r = 5,max_r do
	local schem = aus.generate_tree_schematic(3, {x=r, y=ht, z=r}, tree, leaves, fruit, limbs)
	table.insert(aus.schematics.coast_banksia_big_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 12,
		y_max = 35,
		fill_ratio = (max_r-r+1)/15000,
		biomes = {"eastern_coasts"},
		schematic = schem,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end

	-- Coast Banksia (small)
aus.schematics.coast_banksia_small_tree = {}
local max_r = 4
local ht = 4
local fruit = nil
local limbs = false
local tree = "australia:coast_banksia_tree"
local leaves = "australia:coast_banksia_leaves"
for r = 3,max_r do
	local schem = aus.generate_tree_schematic(1, {x=r, y=ht, z=r}, tree, leaves, fruit, limbs)
	table.insert(aus.schematics.coast_banksia_small_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 6,
		y_max = 10,
		fill_ratio = (max_r-r+1)/12000,
		biomes = {"eastern_coasts"},
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
		place_on = {"australia:dirt_with_grass"},
		y_min = 7,
		y_max = 35,
		fill_ratio = (max_r-r+1)/20000,
		biomes = {"eastern_coasts"},
		schematic = schem,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end

	-- Illawarra Flame Tree
aus.schematics.illawarra_flame_tree = {}
local max_r = 6
local ht = 5
local fruit = nil
local limbs = false
local tree = "australia:illawarra_flame_tree"
local leaves = "australia:illawarra_flame_leaves"
for r = 5,max_r do
	local schem = aus.generate_tree_schematic(4, {x=r, y=ht, z=r}, tree, leaves, fruit, limbs)
	table.insert(aus.schematics.illawarra_flame_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 7,
		y_max = 35,
		fill_ratio = (max_r-r+1)/15000,
		biomes = {"eastern_coasts"},
		schematic = schem,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end

	-- Lemon Myrtle
aus.schematics.lemon_myrtle_tree = {}
local max_r = 3
local ht = 4
local fruit = nil
local limbs = false
local tree = "australia:lemon_myrtle_tree"
local leaves = "australia:lemon_myrtle_leaves"
for r = 2,max_r do
	local schem = aus.generate_tree_schematic(2, {x=r, y=ht, z=r}, tree, leaves, fruit, limbs)
	table.insert(aus.schematics.lemon_myrtle_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 7,
		y_max = 35,
		fill_ratio = (max_r-r+1)/15000,
		biomes = {"eastern_coasts"},
		schematic = schem,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end

	-- Lilly Pilly
aus.schematics.lilly_pilly_tree = {}
local max_r = 5
local ht = 8
local fruit = "australia:lilly_pilly_berries"
local limbs = false
local tree = "australia:lilly_pilly_tree"
local leaves = "australia:lilly_pilly_leaves"
for r = 4,max_r do
	local schem = aus.generate_tree_schematic(1, {x=r, y=ht, z=r}, tree, leaves, fruit, limbs)
	table.insert(aus.schematics.lilly_pilly_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 7,
		y_max = 35,
		fill_ratio = (max_r-r+1)/12000,
		biomes = {"eastern_coasts"},
		schematic = schem,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end

	-- Macadamia Tree
aus.schematics.macadamia_tree = {}
local max_r = 6
local ht = 6
local fruit = "australia:macadamia"
local limbs = nil
local tree = "australia:macadamia_tree"
local leaves = "australia:macadamia_leaves"
for r = 4,max_r do
	local schem = aus.generate_tree_schematic(2, {x=r, y=ht, z=r}, tree, leaves, fruit, limbs)
	table.insert(aus.schematics.macadamia_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 8,
		y_max = 35,
		fill_ratio = (max_r-r+1)/15000,
		biomes = {"eastern_coasts"},
		schematic = schem,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end

	-- Moreton Bay Fig
aus.schematics.moreton_bay_fig_tree = {}
local max_r = 13
local ht = 12
local fruit = "australia:moreton_bay_fig"
local limbs = nil
local tree = "australia:moreton_bay_fig_tree"
local leaves = "australia:moreton_bay_fig_leaves"
for r = 11,max_r do
	local schem = aus.generate_giant_tree_schematic(2, {x=r, y=ht, z=r}, tree, leaves, fruit, limbs)
	table.insert(aus.schematics.moreton_bay_fig_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 8,
		y_max = 35,
		fill_ratio = (max_r-r+1)/15000,
		biomes = {"eastern_coasts"},
		schematic = schem,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end

	-- Paperbark Tree
aus.schematics.paperbark_tree = {}
local max_r = 5
local ht = 8
local fruit = nil
local limbs = nil
local tree = "australia:paperbark_tree"
local leaves = "australia:paperbark_leaves"
for r = 4,max_r do
	local schem = aus.generate_tree_schematic(4, {x=r, y=ht, z=r}, tree, leaves, fruit, limbs)
	table.insert(aus.schematics.paperbark_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 7,
		y_max = 35,
		fill_ratio = (max_r-r+1)/15000,
		biomes = {"eastern_coasts"},
		schematic = schem,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end

	-- River Oak
aus.schematics.river_oak_big_tree = {}
local max_r = 5
local ht = 9
local fruit = nil
local limbs = false
local tree = "australia:river_oak_tree"
local leaves = "australia:river_oak_leaves"
for r = 4,max_r do
	local schem = aus.generate_tree_schematic(3, {x=r, y=ht, z=r}, tree, leaves, fruit, limbs)
	table.insert(aus.schematics.river_oak_big_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 25,
		y_max = 35,
		fill_ratio = (max_r-r+1)/15000,
		biomes = {"eastern_coasts"},
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
		place_on = {"default:dirt_with_grass"},
		y_min = 25,
		y_max = 35,
		fill_ratio = (max_r-r+1)/20000,
		biomes = {"eastern_coasts"},
		schematic = schem,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end

	-- Scribbly Gum
aus.schematics.scribbly_gum_tree = {}
local max_r = 5
local ht = 5
local fruit = nil
local limbs = nil
local tree = "australia:scribbly_gum_tree"
local leaves = "australia:scribbly_gum_leaves"
for r = 4,max_r do
	local schem = aus.generate_tree_schematic(4, {x=r, y=ht, z=r}, tree, leaves, fruit, limbs)
	table.insert(aus.schematics.scribbly_gum_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 7,
		y_max = 35,
		fill_ratio = (max_r-r+1)/12000,
		biomes = {"eastern_coasts"},
		schematic = schem,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end

	-- Tea Tree
aus.schematics.tea_tree_tree = {}
local max_r = 3
local ht = 4
local fruit = nil
local limbs = false
local tree = "australia:tea_tree_tree"
local leaves = "australia:tea_tree_leaves"
for r = 2,max_r do
	local schem = aus.generate_tree_schematic(1, {x=r, y=ht, z=r}, tree, leaves, fruit, limbs)
	table.insert(aus.schematics.tea_tree_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 7,
		y_max = 35,
		fill_ratio = (max_r-r+1)/12000,
		biomes = {"eastern_coasts"},
		schematic = schem,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end

