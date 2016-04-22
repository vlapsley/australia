-- mods/australia/biome_tasmania.lua

minetest.register_biome({
	name = "tasmania",
	--node_dust = "",
	node_top = "default:dirt_with_grass",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 3,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	--node_river_water = "",
	y_min = 36,
	y_max = 31000,
	heat_point = 15,
	humidity_point = 85,
})


--
-- Register ores
--

-- All mapgens except singlenode
-- Blob ore first to avoid other ores inside blobs



--
-- Ferns
--

	-- Big Tree Fern
local n1 = { name = "air", prob = 0 }
local n2 = { name = "australia:tree_fern_leaf_big_end" }
local n3 = { name = "australia:tree_fern_leaf_big" }
local n4 = { name = "australia:fern_trunk_big" }
local n5 = { name = "australia:tree_fern_leaf_big_end", param2 = 1 }
local n6 = { name = "australia:fern_trunk_big_top" }
local n7 = { name = "australia:tree_fern_leaf_big_end", param2 = 3 }
local n8 = { name = "australia:tree_fern_leaves_giant" }
local n9 = { name = "australia:tree_fern_leaf_big_end", param2 = 2 }
minetest.register_decoration({
	deco_type = "schematic",
	sidelen = 80,
	place_on = {"default:dirt_with_grass"},
	y_min = 36,
	y_max = 70,
	fill_ratio = 0.006,
	biomes = {"tasmania"},
	schematic = {
		size = {y = 7, x = 9, z = 9},
	data = {
			n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
			n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
			n1, n1, n1, n1, n1, n1, n2, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
			n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
			n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
			n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
			n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n3, n1, n1, n1, n1, n1, n1, 
			n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
			n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
			n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
			n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n3, n1, n1, 
			n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
			n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
			n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
			n3, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
			n1, n4, n1, n1, n1, n1, n1, n1, n1, n1, n4, n1, n1, n1, n1, n1, n1, 
			n1, n1, n4, n1, n1, n1, n1, n1, n1, n1, n1, n4, n1, n1, n1, n1, n5, 
			n1, n1, n1, n6, n1, n1, n1, n7, n1, n3, n1, n3, n8, n3, n1, n3, n1, 
			n1, n1, n3, n1, n1, n1, n3, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
			n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
			n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
			n1, n1, n1, n1, n1, n1, n1, n3, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
			n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
			n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
			n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
			n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n3, n1, n1, n1, n1, n1, 
			n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
			n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
			n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n3, n1, n1, 
			n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
			n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
			n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
			n9, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
			n1, n1, n1, n1, n1, n1, 
			},
		yslice_prob = {},
	},
	flags = "place_center_x, place_center_z",
})

	-- Small Tree Fern
local f1 = { name = "australia:fern_trunk" }
local f2 = { name = "australia:tree_fern_leaves_02" }
minetest.register_decoration({
	deco_type = "schematic",
	sidelen = 80,
	place_on = {"default:dirt_with_grass"},
	y_min = 36,
	y_max = 80,
	fill_ratio = 0.01,
	biomes = {"tasmania"},
	schematic = {
		size = {y = 4, x = 1, z = 1},
	data = {
			f1, f1, f1, f2, 
			},
		yslice_prob = {},
	},
})

	-- Ruddy Ground Fern
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.006,
		spread = {x = 200, y = 200, z = 200},
		seed = 80,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"tasmania"},
	y_min = 36,
	y_max = 160,
	decoration = "australia:fern",
})

	-- Sickle Fern
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.008,
		spread = {x = 200, y = 200, z = 200},
		seed = 81,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"tasmania"},
	y_min = 36,
	y_max = 140,
	decoration = "australia:small_fern",
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
		biomes = {"tasmania"},
		y_min = 3,
		y_max = 31000,
		decoration = "default:grass_"..length,
	})
end

	-- Grasses
register_grass_decoration(-0.03,  0.09,  5)
register_grass_decoration(-0.015, 0.075, 4)
register_grass_decoration(0,      0.06,  3)
register_grass_decoration(0.015,  0.045, 2)
register_grass_decoration(0.03,   0.03,  1)



--
-- Moss
--

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 80,
	fill_ratio = 0.9,
	biomes = {"tasmania"},
	y_min = 8,
	y_max = 31000,
	decoration = "australia:moss",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 80,
	fill_ratio = 0.02,
	biomes = {"tasmania"},
	y_min = 8,
	y_max = 31000,
	decoration = "australia:moss_with_fungus",
})



--
-- Mushrooms
--

	-- Brown Mushroom
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.006,
		spread = {x = 200, y = 200, z = 200},
		seed = 55,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"tasmania"},
	y_min = 7,
	y_max = 31000,
	decoration = "flowers:Mushroom_brown",
})

	-- Red Mushroom
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.006,
		spread = {x = 200, y = 200, z = 200},
		seed = 56,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"tasmania"},
	y_min = 7,
	y_max = 31000,
	decoration = "flowers:mushroom_red",
})



--
-- Trees
--

	-- Blue Gum
aus.schematics.blue_gum_tree = {}
local max_r = 7
local ht = 12
local fruit = nil
local limbs = nil
local tree = "australia:blue_gum_tree"
local leaves = "australia:blue_gum_leaves"
for r = 6,max_r do
	local schem = aus.generate_tree_schematic(10, {x=r, y=ht, z=r}, tree, leaves, fruit, limbs)
	push(aus.schematics.blue_gum_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 36,
		y_max = 170,
		fill_ratio = (max_r-r+1)/15000,
		biomes = {"tasmania"},
		schematic = schem,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end

	-- Celery-top Pine
aus.schematics.celery_top_pine_tree = {}
local max_r = 5
local fruit = nil
local tree = "australia:celery_top_pine_tree"
local leaves = "australia:celery_top_pine_leaves"
for r = 4,max_r do
	local schem = aus.generate_conifer_schematic(5, 4, tree, leaves, fruit)
	push(aus.schematics.celery_top_pine_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 36,
		y_max = 180,
		fill_ratio = (max_r-r+1)/8000,
		biomes = {"tasmania"},
		schematic = schem,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end

	-- Huon Pine
aus.schematics.huon_pine_tree = {}
local max_r = 4
local ht = 8
local fruit = nil
local limbs = nil
local tree = "australia:huon_pine_tree"
local leaves = "australia:huon_pine_leaves"
for r = 4,max_r do
	local schem = aus.generate_tree_schematic(4, {x=r, y=ht, z=r}, tree, leaves, fruit, limbs)
	push(aus.schematics.huon_pine_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 36,
		y_max = 150,
		fill_ratio = (max_r-r+1)/15000,
		biomes = {"tasmania"},
		schematic = schem,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end

	-- Southern Sassafras
aus.schematics.southern_sassafras_tree = {}
local max_r = 5
local fruit = nil
local tree = "australia:southern_sassafras_tree"
local leaves = "australia:southern_sassafras_leaves"
for r = 4,max_r do
	local schem = aus.generate_conifer_schematic(6, 4, tree, leaves, fruit)
	push(aus.schematics.southern_sassafras_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 36,
		y_max = 170,
		fill_ratio = (max_r-r+1)/8000,
		biomes = {"tasmania"},
		schematic = schem,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end

	-- Swamp Gum
aus.schematics.swamp_gum_tree = {}
local max_r = 6
local ht = 18
local fruit = nil
local limbs = nil
local tree = "australia:swamp_gum_tree"
local leaves = "australia:swamp_gum_leaves"
for r = 6,max_r do
	local schem = aus.generate_giant_tree_schematic(26, {x=r, y=ht, z=r}, tree, leaves, fruit, limbs)
	push(aus.schematics.swamp_gum_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 36,
		y_max = 120,
		fill_ratio = (max_r-r+1)/10000,
		biomes = {"tasmania"},
		schematic = schem,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end

	-- Tasmanian Myrtle
aus.schematics.tasmanian_myrtle_tree = {}
local max_r = 8
local ht = 14
local fruit = nil
local limbs = nil
local tree = "australia:tasmanian_myrtle_tree"
local leaves = "australia:tasmanian_myrtle_leaves"
for r = 6,max_r do
	local schem = aus.generate_big_tree_schematic(6, {x=r, y=ht, z=r}, tree, leaves, fruit, limbs)
	push(aus.schematics.tasmanian_myrtle_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 36,
		y_max = 150,
		fill_ratio = (max_r-r+1)/10000,
		biomes = {"tasmania"},
		schematic = schem,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end

