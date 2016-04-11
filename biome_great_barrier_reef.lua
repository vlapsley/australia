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
-- Decorations
--

	-- Staghorn Coral
local function register_staghorn_coral_decoration(color)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:sand"},
		sidelen = 80,
		fill_ratio = 0.01,
		biomes = {"great_barrier_reef"},
		y_min = -12,
		y_max = -3,
		decoration = "australia:staghorn_coral_"..color,
		flags = "force_placement",
	})
end

register_staghorn_coral_decoration("yellow")
register_staghorn_coral_decoration("purple")
register_staghorn_coral_decoration("pink")
register_staghorn_coral_decoration("blue")




--
-- noairblocks
--
-- Code modified from Duane Robertson's (github duane-r) valleys_c mod. 
-- Original code modified from Perttu Ahola's <celeron55@gmail.com> 
-- "noairblocks" mod and released as LGPL 2.1, as the original.

local water_nodes = {"default:water_source", "default:water_flowing", "default:river_water_source", "default:river_water_flowing"}
local aus_nodes = {"australia:water_source", "australia:water_flowing", "australia:river_water_source", "australia:river_water_flowing"}

for _, name in pairs(water_nodes) do
	local water = table.copy(minetest.registered_nodes[name])
	local new_name = string.gsub(name, 'default', 'australia')
	local new_source = string.gsub(water.liquid_alternative_source, 'default', 'australia')
	local new_flowing = string.gsub(water.liquid_alternative_flowing, 'default', 'australia')
	water.alpha = 0
	water.liquid_alternative_source = new_source
	water.liquid_alternative_flowing = new_flowing
	water.groups.not_in_creative_inventory = 1

	minetest.register_node(new_name, water)
end


local check_pos = {
	{x=-1, y=0, z=0},
	{x=1, y=0, z=0},
	{x=0, y=0, z=-1},
	{x=0, y=0, z=1},
	{x=0, y=1, z=0},
}

minetest.register_abm({
	nodenames = {"group:sea"},
	neighbors = {"group:water"},
	interval = 10,
	chance = 1,
	action = function(pos)
		for _,offset in pairs(check_pos) do
			local check = vector.add(pos, offset)
			local check_above = vector.add(check, {x=0,y=1,z=0})
			if offset == {0,-1,0} or minetest.get_node(check_above).name ~= "air" then
				local name = minetest.get_node(check).name
				for node_num=1,#water_nodes do
					if name == water_nodes[node_num] then
						minetest.add_node(check, {name = aus_nodes[node_num]})
					end
				end
			end
		end
	end,
})

minetest.register_abm({
	nodenames = aus_nodes,
	neighbors = {"air"},
	interval = 20,
	chance = 1,
	action = function(pos)
		if minetest.get_node({x=pos.x, y=pos.y+1, z=pos.z}).name == "air" then
			minetest.remove_node(pos)
		end
	end,
})
