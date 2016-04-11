-- mods/australia/mapgen.lua

minetest.clear_registered_biomes()
minetest.clear_registered_decorations()



--
-- Register ores
--

-- All mapgens except singlenode
-- Blob ore first to avoid other ores inside blobs

	-- Bluestone (Basalt)
minetest.register_ore({
	ore_type        = "blob",
	ore             = "australia:bluestone",
	wherein         = {"default:stone",
						"default:sandstone",
						"australia:red_stone"},
	clust_scarcity  = 16 * 16 * 16,
	clust_size      = 8,
	y_min           = -31000,
	y_max           = 31000,
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
-- Biomes
--

	-- Underground biome
if aus.biome_underground == 1 then
	dofile(aus.path .. "/biome_underground.lua")
end

	-- Coastal biomes
if aus.biome_mangroves == 1 then
	dofile(aus.path .. "/biome_mangroves.lua")
end
if aus.biome_tasman_sea == 1 then
	dofile(aus.path .. "/biome_tasman_sea.lua")
end
if aus.biome_great_australian_bight == 1 then
	dofile(aus.path .. "/biome_great_australian_bight.lua")
end
if aus.biome_indian_ocean == 1 then
	dofile(aus.path .. "/biome_indian_ocean.lua")
end
if aus.biome_great_barrier_reef == 1 then
	dofile(aus.path .. "/biome_great_barrier_reef.lua")
end
if aus.biome_timor_sea == 1 then
	dofile(aus.path .. "/biome_timor_sea.lua")
end

	-- Lowland biomes
if aus.biome_jarrah_karri_forests == 1 then
	dofile(aus.path .. "/biome_jarrah_karri_forests.lua")
end
if aus.biome_eastern_coasts == 1 then
	dofile(aus.path .. "/biome_eastern_coasts.lua")
end
if aus.biome_goldfields_esperence == 1 then
	dofile(aus.path .. "/biome_goldfields_esperence.lua")
end
if aus.biome_arnhem_land == 1 then
	dofile(aus.path .. "/biome_arnhem_land.lua")
end
if aus.biome_gulf_of_carpentaria == 1 then
	dofile(aus.path .. "/biome_gulf_of_carpentaria.lua")
end
if aus.biome_far_north_queensland == 1 then
	dofile(aus.path .. "/biome_far_north_queensland.lua")
end
if aus.biome_pilbara == 1 then
	dofile(aus.path .. "/biome_pilbara.lua")
end
if aus.biome_kimberley == 1 then
	dofile(aus.path .. "/biome_kimberley.lua")
end

	-- Highland biomes
if aus.biome_tasmania == 1 then
	dofile(aus.path .. "/biome_tasmania.lua")
end
if aus.biome_great_dividing_range == 1 then
	dofile(aus.path .. "/biome_great_dividing_range.lua")
end
if aus.biome_victorian_forests == 1 then
	dofile(aus.path .. "/biome_victorian_forests.lua")
end
if aus.biome_flinders_lofty == 1 then
	dofile(aus.path .. "/biome_flinders_lofty.lua")
end
if aus.biome_murray_darling_basin == 1 then
	dofile(aus.path .. "/biome_murray_darling_basin.lua")
end
if aus.biome_mulga_lands == 1 then
	dofile(aus.path .. "/biome_mulga_lands.lua")
end
if aus.biome_central_australia == 1 then
	dofile(aus.path .. "/biome_central_australia.lua")
end
if aus.biome_simpson_desert == 1 then
	dofile(aus.path .. "/biome_simpson_desert.lua")
end

	-- Alpine biome
if aus.biome_australian_alps == 1 then
	dofile(aus.path .. "/biome_australian_alps.lua")
end

