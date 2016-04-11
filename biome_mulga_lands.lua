-- mods/australia/biome_mulga_lands.lua

minetest.register_biome({
	name = "mulga_lands",
	--node_dust = "",
	node_top = "default:dirt_with_dry_grass",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 2,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	node_river_water = "australia:muddy_river_water_source",
	y_min = 36,
	y_max = 31000,
	heat_point = 75,
	humidity_point = 45,
})



--
-- Decorations
--

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
		biomes = {"mulga_lands"},
		y_min = 36,
		y_max = 190,
		decoration = "default:dry_grass_"..length,
	})
end

	-- Dry grasses
register_dry_grass_decoration(0.01, 0.05,  5)
register_dry_grass_decoration(0.03, 0.03,  4)
register_dry_grass_decoration(0.05, 0.01,  3)
register_dry_grass_decoration(0.07, -0.01, 2)
register_dry_grass_decoration(0.09, -0.03, 1)



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
		place_on = {"australia:dirt_with_dry_grass"},
		y_min = 36,
		y_max = 140,
		fill_ratio = (max_r-r+1)/20000,
		biomes = {"mulga_lands"},
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
		place_on = {"default:dirt_with_dry_grass"},
		y_min = 36,
		y_max = 150,
		fill_ratio = (max_r-r+1)/15000,
		biomes = {"mulga_lands"},
		schematic = schem,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end

	-- Mulga Tree
aus.schematics.mulga_tree = {}
local max_r = 4
local ht = 4
local fruit = nil
local limbs = false
local tree = "australia:mulga_tree"
local leaves = "australia:mulga_leaves"
for r = 3,max_r do
	local schem = aus.generate_tree_schematic(2, {x=r, y=ht, z=r}, tree, leaves, fruit, limbs)
	push(aus.schematics.mulga_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_dry_grass"},
		y_min = 36,
		y_max = 150,
		fill_ratio = (max_r-r+1)/4000,
		biomes = {"mulga_lands"},
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
	push(aus.schematics.river_oak_big_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_dry_grass"},
		y_min = 36,
		y_max = 150,
		fill_ratio = (max_r-r+1)/12000,
		biomes = {"mulga_lands"},
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
		place_on = {"default:dirt_with_dry_grass"},
		y_min = 36,
		y_max = 140,
		fill_ratio = (max_r-r+1)/20000,
		biomes = {"mulga_lands"},
		schematic = schem,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end

	-- Shoestring Acacia
aus.schematics.shoestring_acacia_tree = {}
local max_r = 3
local ht = 5
local fruit = nil
local limbs = false
local tree = "australia:shoestring_acacia_tree"
local leaves = "australia:shoestring_acacia_leaves"
for r = 2,max_r do
	local schem = aus.generate_tree_schematic(3, {x=r, y=ht, z=r}, tree, leaves, fruit, limbs)
	push(aus.schematics.shoestring_acacia_tree, schem)
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_dry_grass"},
		y_min = 36,
		y_max = 150,
		fill_ratio = (max_r-r+1)/12000,
		biomes = {"mulga_lands"},
		schematic = schem,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end

