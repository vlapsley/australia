-- mods/australia/crafting.lua

minetest.register_craft({
	output = 'australia:red_stonebrick 4',
	recipe = {
		{'australia:red_stone', 'australia:red_stone'},
		{'australia:red_stone', 'australia:red_stone'},
	}
})

minetest.register_craft({
	output = 'australia:bluestone_brick 4',
	recipe = {
		{'australia:bluestone', 'australia:bluestone'},
		{'australia:bluestone', 'australia:bluestone'},
	}
})

	-- Wood planks
for i in ipairs(aus.treelist) do
	local treename			= aus.treelist[i][1]
	minetest.register_craft({
		output = "australia:"..treename.."_wood 4",
		recipe = {
			{"australia:"..treename.."_tree"}
		}
	})
end



--
-- Cooking recipes
--

minetest.register_craft({
	type = "cooking",
	output = "australia:red_stone",
	recipe = "australia:red_cobble",
})

minetest.register_craft({
	type = "cooking",
	output = "australia:bluestone",
	recipe = "australia:bluestone_cobble",
})

	-- Fences
for i in ipairs(aus.treelist) do
	local treename			= aus.treelist[i][1]
	minetest.register_craft({
		output = "australia:fence_"..treename.."_wood 4",
		recipe = {
			{"australia:"..treename.."_wood", "group:stick", "australia:"..treename.."_wood"},
			{"australia:"..treename.."_wood", "group:stick", "australia:"..treename.."_wood"},
		}
	})
end



--
-- Fuels
--


