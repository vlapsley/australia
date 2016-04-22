-- mods/australia/biome_great_australian_bight.lua

minetest.register_biome({
	name = "great_australian_bight",
	--node_dust = "",
	node_top = "default:sandstone",
	depth_top = 1,
	node_filler = "default:sandstone",
	depth_filler = 3,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	--node_river_water = "",
	y_min = -64,
	y_max = 3,
	heat_point = 40,
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
	wherein        = "default:sandstone",
	clust_scarcity = 9*9*9,
	clust_num_ores = 25,
	clust_size     = 6,
	biomes         = {"great_australian_bight"},
	y_min     = -10,
	y_max     = -3,
})



--
-- Decorations
--



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

