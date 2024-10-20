--
-- Grow trees from saplings
--

-- list of all saplings
aus.saplings = {
	["australia:black_box_sapling"] = {schematics=aus.schematics.black_box_tree},
	["australia:black_wattle_sapling"] = {schematics=aus.schematics.black_wattle_tree},
	["australia:blue_gum_sapling"] = {schematics=aus.schematics.blue_gum_tree},
	["australia:boab_sapling"] = {schematics=aus.schematics.boab_tree},
	["australia:bull_banksia_sapling"] = {schematics=aus.schematics.bull_banksia_tree},
	["australia:celery_top_pine_sapling"] = {schematics=aus.schematics.celery_top_pine_tree},
	["australia:cherry_sapling"] = {schematics=aus.schematics.cherry_tree},
	["australia:cloncurry_box_sapling"] = {schematics=aus.schematics.cloncurry_box_tree},
	["australia:coast_banksia_sapling"] = {schematics=aus.schematics.coast_banksia_big_tree},
	["australia:coolabah_sapling"] = {schematics=aus.schematics.coolabah_tree},
	["australia:daintree_stringybark_sapling"] = {schematics=aus.schematics.daintree_stringybark_tree},
	["australia:darwin_woollybutt_sapling"] = {schematics=aus.schematics.darwin_woollybutt_tree},
	["australia:desert_oak_sapling"] = {schematics=aus.schematics.desert_oak_tree},
	["australia:fan_palm_sapling"] = {schematics=aus.schematics.fan_palm_tree},
	["australia:golden_wattle_sapling"] = {schematics=aus.schematics.golden_wattle_tree},
	["australia:grey_mangrove_sapling"] = {schematics=aus.schematics.grey_mangrove_tree},
	["australia:huon_pine_sapling"] = {schematics=aus.schematics.huon_pine_tree},
	["australia:illawarra_flame_sapling"] = {schematics=aus.schematics.illawarra_flame_tree},
	["australia:jarrah_sapling"] = {schematics=aus.schematics.jarrah_tree},
	["australia:karri_sapling"] = {schematics=aus.schematics.karri_tree},
	["australia:lemon_eucalyptus_sapling"] = {schematics=aus.schematics.lemon_eucalyptus_tree},
	["australia:lemon_myrtle_sapling"] = {schematics=aus.schematics.lemon_myrtle_tree},
	["australia:lilly_pilly_sapling"] = {schematics=aus.schematics.lilly_pilly_tree},
	["australia:macadamia_sapling"] = {schematics=aus.schematics.macadamia_tree},
	["australia:mangrove_apple_sapling"] = {schematics=aus.schematics.mangrove_apple_tree},
	["australia:mangrove_palm_sapling"] = {schematics=aus.schematics.mangrove_palm},
	["australia:marri_sapling"] = {schematics=aus.schematics.marri_tree},
	["australia:merbau_sapling"] = {schematics=aus.schematics.merbau_tree},
	["australia:moreton_bay_fig_sapling"] = {schematics=aus.schematics.moreton_bay_fig_tree},
	["australia:mulga_sapling"] = {schematics=aus.schematics.mulga_tree},
	["australia:paperbark_sapling"] = {schematics=aus.schematics.paperbark_tree},
	["australia:quandong_sapling"] = {schematics=aus.schematics.quandong_tree},
	["australia:red_bottlebrush_sapling"] = {schematics=aus.schematics.red_bottlebrush_tree},
	["australia:river_oak_sapling"] = {schematics=aus.schematics.river_oak_tree},
	["australia:river_red_gum_sapling"] = {schematics=aus.schematics.river_red_gum_tree},
	["australia:rottnest_island_pine_sapling"] = {schematics=aus.schematics.rottnest_island_pine_tree},
	["australia:scribbly_gum_sapling"] = {schematics=aus.schematics.scribbly_gum_tree},
	["australia:shoestring_acacia_sapling"] = {schematics=aus.schematics.shoestring_acacia_tree},
	["australia:snow_gum_sapling"] = {schematics=aus.schematics.snow_gum_tree},
	["australia:southern_sassafras_sapling"] = {schematics=aus.schematics.southern_sassafras_tree},
	["australia:stilted_mangrove_sapling"] = {schematics=aus.schematics.stilted_mangrove_tree},
	["australia:sugar_gum_sapling"] = {schematics=aus.schematics.sugar_gum_tree},
	["australia:swamp_bloodwood_sapling"] = {schematics=aus.schematics.swamp_bloodwood_tree},
	["australia:swamp_gum_sapling"] = {schematics=aus.schematics.swamp_gum_tree},
	["australia:swamp_paperbark_sapling"] = {schematics=aus.schematics.swamp_paperbark_tree},
	["australia:tasmanian_myrtle_sapling"] = {schematics=aus.schematics.tasmanian_myrtle_tree},
	["australia:tea_tree_sapling"] = {schematics=aus.schematics.tea_tree_tree},
	["australia:waratah_sapling"] = {schematics=aus.schematics.waratah},
	["australia:white_box_sapling"] = {schematics=aus.schematics.white_box_tree},
	["australia:wirewood_sapling"] = {schematics=aus.schematics.wirewood_tree},
}

local function grow_sapling(pos, node_name)
	local node_under = minetest.get_node_or_nil({x = pos.x, y = pos.y - 1, z = pos.z})
	if not node_under or minetest.get_item_group(node_under.name, "soil") == 0 then
		return
	end

	local sap_data = aus.saplings[node_name]
	if not sap_data or not sap_data.schematics then
		minetest.log("error", "No schematics for " .. node_name)
		return
	end

	minetest.log("action", "A sapling grows into a tree at " .. minetest.pos_to_string(pos))

	local schem = sap_data.schematics[math.random(1, #sap_data.schematics)]
	local adj = {x = pos.x - math.floor(schem.size.x / 2),
					y = pos.y - 1,
					z = pos.z - math.floor(schem.size.z / 2)}
	minetest.place_schematic(adj, schem, 'random', nil, true)
end

-- create a list of just the node names
local sapling_list = {}
for sap_name, _ in pairs(aus.saplings) do
	table.insert(sapling_list, sap_name)

	if bonemeal then
		bonemeal:add_sapling({
			{ sap_name, function(pos) grow_sapling(pos, sap_name) end, "soil" }
		})
	end
end

-- This abm can handle all saplings.
minetest.register_abm({
	nodenames = sapling_list,
	interval = 10,
	chance = 50,
	action = function(pos, node)
		grow_sapling(pos, node.name)
	end,
})
