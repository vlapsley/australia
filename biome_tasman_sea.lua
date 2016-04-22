-- mods/australia/biome_tasman_sea.lua

minetest.register_biome({
	name = "tasman_sea",
	--node_dust = "",
	node_top = "default:sand",
	depth_top = 1,
	node_filler = "default:sand",
	depth_filler = 2,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	--node_river_water = "",
	y_min = -64,
	y_max = 3,
	heat_point = 20,
	humidity_point = 50,
})



--
-- Register ores
--

-- All mapgens except singlenode
-- Blob ore first to avoid other ores inside blobs

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "australia:stone_kelp_brown",
	wherein        = "default:sand",
	clust_scarcity = 9*9*9,
	clust_num_ores = 25,
	clust_size     = 6,
	biomes         = {"tasman_sea"},
	y_min     = -10,
	y_max     = -3,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "australia:stone_kelp_giant_brown",
	wherein        = "default:sand",
	clust_scarcity = 10*10*10,
	clust_num_ores = 24,
	clust_size     = 8,
	biomes         = {"tasman_sea"},
	y_min     = -64,
	y_max     = -8,
})



--
-- Decorations
--

local function register_grass_decoration(offset, scale, length)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:sand"},
		sidelen = 16,
		noise_params = {
			offset = offset,
			scale = scale,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"tasman_sea"},
		y_min = 3,
		y_max = 3,
		decoration = "default:grass_"..length,
	})
end

local function register_dry_grass_decoration(offset, scale, length)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:sand"},
		sidelen = 16,
		noise_params = {
			offset = offset,
			scale = scale,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"tasman_sea"},
		y_min = 3,
		y_max = 3,
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



--
-- ABM'S
--

minetest.register_abm({
nodenames = {"australia:stone_kelp_brown"},
interval = 15,
chance = 5,
action = function(pos, node, active_object_count, active_object_count_wider)
	local yp = {x = pos.x, y = pos.y + 1, z = pos.z}
	if (minetest.get_node(yp).name == "default:water_source" or
	minetest.get_node(yp).name == "australia:water_source") then
		pos.y = pos.y + 1
		minetest.add_node(pos, {name = "australia:kelp_brown"}) else
		return
	end
end
})

minetest.register_abm({
nodenames = {"australia:stone_kelp_giant_brown"},
interval = 12,
chance = 10,
action = function(pos, node, active_object_count, active_object_count_wider)
	local yp = {x = pos.x, y = pos.y + 1, z = pos.z}
	if (minetest.get_node(yp).name == "default:water_source" or
	minetest.get_node(yp).name == "australia:water_source") then
		pos.y = pos.y + 1
		minetest.add_node(pos, {name = "australia:kelp_giant_brown"}) else
		return
	end
end
})

minetest.register_abm({
nodenames = {"australia:kelp_giant_brown"},
interval = 6,
chance = 3,
action = function(pos, node, active_object_count, active_object_count_wider)
	local yp = {x = pos.x, y = pos.y + 1, z = pos.z}
	local yyp = {x = pos.x, y = pos.y + 2, z = pos.z}
	local yyyp = {x = pos.x, y = pos.y + 3, z = pos.z}
	if minetest.get_node(pos).name == "australia:kelp_giant_brown" and
		(minetest.get_node(yp).name == "default:water_source" or
		minetest.get_node(yp).name == "australia:water_source") then
			if (minetest.get_node(yyp).name == "default:water_source" or
			minetest.get_node(yyp).name == "australia:water_source") then
				if (minetest.get_node(yyyp).name == "default:water_source" or
				minetest.get_node(yyyp).name == "australia:water_source") then
					minetest.add_node(pos, {name = "australia:kelp_giant_brown_middle"}) 
					pos.y = pos.y + 1
					minetest.add_node(pos, {name = "australia:kelp_giant_brown"}) 
				else
				return
			end
		end
	end
end
})
