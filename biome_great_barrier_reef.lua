-- mods/australia/biome_great_barrier_reef.lua

minetest.register_biome({
	name = "great_barrier_reef",
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
	heat_point = 75,
	humidity_point = 75,
})



--
-- Register ores
--

-- All mapgens except singlenode
-- Blob ore first to avoid other ores inside blobs

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "australia:coral_stone_cauliflower_brown",
	wherein        = "default:sand",
	clust_scarcity = 11*11*11,
	clust_num_ores = 25,
	clust_size     = 8,
	biomes         = {"great_barrier_reef"},
	y_min     = -12,
	y_max     = -4,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "australia:coral_stone_cauliflower_green",
	wherein        = "default:sand",
	clust_scarcity = 11*11*11,
	clust_num_ores = 25,
	clust_size     = 8,
	biomes         = {"great_barrier_reef"},
	y_min     = -12,
	y_max     = -4,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "australia:coral_stone_cauliflower_pink",
	wherein        = "default:sand",
	clust_scarcity = 11*11*11,
	clust_num_ores = 25,
	clust_size     = 8,
	biomes         = {"great_barrier_reef"},
	y_min     = -12,
	y_max     = -4,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "australia:coral_sand_staghorn_blue",
	wherein        = "default:sand",
	clust_scarcity = 10*10*10,
	clust_num_ores = 24,
	clust_size     = 4,
	biomes         = {"great_barrier_reef"},
	y_min     = -6,
	y_max     = -2,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "australia:coral_sand_staghorn_pink",
	wherein        = "default:sand",
	clust_scarcity = 9*9*9,
	clust_num_ores = 25,
	clust_size     = 5,
	biomes         = {"great_barrier_reef"},
	y_min     = -6,
	y_max     = -2,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "australia:coral_sand_staghorn_purple",
	wherein        = "default:sand",
	clust_scarcity = 13*13*13,
	clust_num_ores = 20,
	clust_size     = 4,
	biomes         = {"great_barrier_reef"},
	y_min     = -6,
	y_max     = -2,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "australia:coral_sand_staghorn_yellow",
	wherein        = "default:sand",
	clust_scarcity = 12*12*12,
	clust_num_ores = 22,
	clust_size     = 4,
	biomes         = {"great_barrier_reef"},
	y_min     = -6,
	y_max     = -2,
})



--
-- Decorations
--

	-- Brain Coral
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:sand"},
	sidelen = 80,
	fill_ratio = 0.005,
	biomes = {"great_barrier_reef"},
	y_min     = -12,
	y_max     = -3,
	decoration = "australia:brain_coral",
	flags = "force_placement",
})



--
-- ABM'S
--

minetest.register_abm({
nodenames = {"australia:coral_sand_staghorn_blue"},
interval = 15,
chance = 5,
action = function(pos, node, active_object_count, active_object_count_wider)
	local yp = {x = pos.x, y = pos.y + 1, z = pos.z}
	if (minetest.get_node(yp).name == "default:water_source" or
	minetest.get_node(yp).name == "australia:water_source") then
		pos.y = pos.y + 1
		minetest.add_node(pos, {name = "australia:staghorn_coral_blue"}) else
		return
	end
end
})

minetest.register_abm({
nodenames = {"australia:coral_sand_staghorn_pink"},
interval = 15,
chance = 5,
action = function(pos, node, active_object_count, active_object_count_wider)
	local yp = {x = pos.x, y = pos.y + 1, z = pos.z}
	if (minetest.get_node(yp).name == "default:water_source" or
	minetest.get_node(yp).name == "australia:water_source") then
		pos.y = pos.y + 1
		minetest.add_node(pos, {name = "australia:staghorn_coral_pink"}) else
		return
	end
end
})

minetest.register_abm({
nodenames = {"australia:coral_sand_staghorn_purple"},
interval = 15,
chance = 5,
action = function(pos, node, active_object_count, active_object_count_wider)
	local yp = {x = pos.x, y = pos.y + 1, z = pos.z}
	if (minetest.get_node(yp).name == "default:water_source" or
	minetest.get_node(yp).name == "australia:water_source") then
		pos.y = pos.y + 1
		minetest.add_node(pos, {name = "australia:staghorn_coral_purple"}) else
		return
	end
end
})

minetest.register_abm({
nodenames = {"australia:coral_sand_staghorn_yellow"},
interval = 15,
chance = 5,
action = function(pos, node, active_object_count, active_object_count_wider)
	local yp = {x = pos.x, y = pos.y + 1, z = pos.z}
	if (minetest.get_node(yp).name == "default:water_source" or
	minetest.get_node(yp).name == "australia:water_source") then
		pos.y = pos.y + 1
		minetest.add_node(pos, {name = "australia:staghorn_coral_yellow"}) else
		return
	end
end
})

minetest.register_abm({
nodenames = {"australia:coral_stone_cauliflower_brown"},
interval = 15,
chance = 5,
action = function(pos, node, active_object_count, active_object_count_wider)
	local yp = {x = pos.x, y = pos.y + 1, z = pos.z}
	if (minetest.get_node(yp).name == "default:water_source" or
	minetest.get_node(yp).name == "australia:water_source") then
		pos.y = pos.y + 1
		minetest.add_node(pos, {name = "australia:cauliflower_coral_brown"}) else
		return
	end
end
})

minetest.register_abm({
nodenames = {"australia:coral_stone_cauliflower_green"},
interval = 15,
chance = 5,
action = function(pos, node, active_object_count, active_object_count_wider)
	local yp = {x = pos.x, y = pos.y + 1, z = pos.z}
	if (minetest.get_node(yp).name == "default:water_source" or
	minetest.get_node(yp).name == "australia:water_source") then
		pos.y = pos.y + 1
		minetest.add_node(pos, {name = "australia:cauliflower_coral_green"}) else
		return
	end
end
})

minetest.register_abm({
nodenames = {"australia:coral_stone_cauliflower_pink"},
interval = 15,
chance = 5,
action = function(pos, node, active_object_count, active_object_count_wider)
	local yp = {x = pos.x, y = pos.y + 1, z = pos.z}
	if (minetest.get_node(yp).name == "default:water_source" or
	minetest.get_node(yp).name == "australia:water_source") then
		pos.y = pos.y + 1
		minetest.add_node(pos, {name = "australia:cauliflower_coral_pink"}) else
		return
	end
end
})

minetest.register_abm({
nodenames = {"group:coral"},
interval = 3,
chance = 1,
action = function(pos, node, active_object_count, active_object_count_wider)
	local yp = {x = pos.x, y = pos.y + 1, z = pos.z}
	local yyp = {x = pos.x, y = pos.y + 2, z = pos.z}
	if ((minetest.get_node(yp).name == "default:water_source" or
	minetest.get_node(yp).name == "australia:water_source") and
	(minetest.get_node(yyp).name == "default:water_source" or
	minetest.get_node(yyp).name == "australia:water_source")) then
		local objs = minetest.get_objects_inside_radius(pos, 2)
		for k, obj in pairs(objs) do
			obj:set_hp(obj:get_hp()+ 1)
		end
	else
	return
	end
end
})
