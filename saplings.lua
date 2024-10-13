--
-- Grow trees from saplings
--

-- list of all saplings
aus.saplings = {
	{sapling="australia:black_box_sapling",
	 schematics=aus.schematics.black_box_tree},
	{sapling="australia:black_wattle_sapling",
	 schematics=aus.schematics.black_wattle_tree},
	{sapling="australia:blue_gum_sapling",
	 schematics=aus.schematics.blue_gum_tree},
	{sapling="australia:boab_sapling",
	 schematics=aus.schematics.boab_tree},
	{sapling="australia:bull_banksia_sapling",
	 schematics=aus.schematics.bull_banksia_tree},
	{sapling="australia:celery_top_pine_sapling",
	 schematics=aus.schematics.celery_top_pine_tree},
	{sapling="australia:cherry_sapling",
	 schematics=aus.schematics.cherry_tree},
	{sapling="australia:cloncurry_box_sapling",
	 schematics=aus.schematics.cloncurry_box_tree},
	{sapling="australia:coast_banksia_sapling",
	 schematics=aus.schematics.coast_banksia_big_tree},
	{sapling="australia:coolabah_sapling",
	 schematics=aus.schematics.coolabah_tree},
	{sapling="australia:daintree_stringybark_sapling",
	 schematics=aus.schematics.daintree_stringybark_tree},
	{sapling="australia:darwin_woollybutt_sapling",
	 schematics=aus.schematics.darwin_woollybutt_tree},
	{sapling="australia:desert_oak_sapling",
	 schematics=aus.schematics.desert_oak_tree},
	{sapling="australia:fan_palm_sapling",
	 schematics=aus.schematics.fan_palm_tree},
	{sapling="australia:golden_wattle_sapling",
	 schematics=aus.schematics.golden_wattle_tree},
	{sapling="australia:grey_mangrove_sapling",
	 schematics=aus.schematics.grey_mangrove_tree},
	{sapling="australia:huon_pine_sapling",
	 schematics=aus.schematics.huon_pine_tree},
	{sapling="australia:illawarra_flame_sapling",
	 schematics=aus.schematics.illawarra_flame_tree},
	{sapling="australia:jarrah_sapling",
	 schematics=aus.schematics.jarrah_tree},
	{sapling="australia:karri_sapling",
	 schematics=aus.schematics.karri_tree},
	{sapling="australia:lemon_eucalyptus_sapling",
	 schematics=aus.schematics.lemon_eucalyptus_tree},
	{sapling="australia:lemon_myrtle_sapling",
	 schematics=aus.schematics.lemon_myrtle_tree},
	{sapling="australia:lilly_pilly_sapling",
	 schematics=aus.schematics.lilly_pilly_tree},
	{sapling="australia:macadamia_sapling",
	 schematics=aus.schematics.macadamia_tree},
	{sapling="australia:mangrove_apple_sapling",
	 schematics=aus.schematics.mangrove_apple_tree},
	{sapling="australia:marri_sapling",
	 schematics=aus.schematics.marri_tree},
	{sapling="australia:merbau_sapling",
	 schematics=aus.schematics.merbau_tree},
	{sapling="australia:moreton_bay_fig_sapling",
	 schematics=aus.schematics.moreton_bay_fig_tree},
	{sapling="australia:mulga_sapling",
	 schematics=aus.schematics.mulga_tree},
	{sapling="australia:paperbark_sapling",
	 schematics=aus.schematics.paperbark_tree},
	{sapling="australia:quandong_sapling",
	 schematics=aus.schematics.quandong_tree},
	{sapling="australia:red_bottlebrush_sapling",
	 schematics=aus.schematics.red_bottlebrush_tree},
	{sapling="australia:river_oak_sapling",
	 schematics=aus.schematics.river_oak_tree},
	{sapling="australia:river_red_gum_sapling",
	 schematics=aus.schematics.river_red_gum_tree},
	{sapling="australia:rottnest_island_pine_sapling",
	 schematics=aus.schematics.rottnest_island_pine_tree},
	{sapling="australia:scribbly_gum_sapling",
	 schematics=aus.schematics.scribbly_gum_tree},
	{sapling="australia:shoestring_acacia_sapling",
	 schematics=aus.schematics.shoestring_acacia_tree},
	{sapling="australia:snow_gum_sapling",
	 schematics=aus.schematics.snow_gum_tree},
	{sapling="australia:southern_sassafras_sapling",
	 schematics=aus.schematics.southern_sassafras_tree},
	{sapling="australia:stilted_mangrove_sapling",
	 schematics=aus.schematics.stilted_mangrove_tree},
	{sapling="australia:sugar_gum_sapling",
	 schematics=aus.schematics.sugar_gum_tree},
	{sapling="australia:swamp_bloodwood_sapling",
	 schematics=aus.schematics.swamp_bloodwood_tree},
	{sapling="australia:swamp_gum_sapling",
	 schematics=aus.schematics.swamp_gum_tree},
	{sapling="australia:swamp_paperbark_sapling",
	 schematics=aus.schematics.swamp_paperbark_tree},
	{sapling="australia:tasmanian_myrtle_sapling",
	 schematics=aus.schematics.tasmanian_myrtle_tree},
	{sapling="australia:tea_tree_sapling",
	 schematics=aus.schematics.tea_tree_tree},
	{sapling="australia:white_box_sapling",
	 schematics=aus.schematics.white_box_tree},
	{sapling="australia:wirewood_sapling",
	 schematics=aus.schematics.wirewood_tree},
}

-- create a list of just the node names
local sapling_list = {}
for _, sap in pairs(aus.saplings) do
	table.insert(sapling_list, sap.sapling)
end

-- This abm can handle all saplings.
minetest.register_abm({
	nodenames = sapling_list,
	interval = 10,
	chance = 50,
	action = function(pos, node)
		local node_under = minetest.get_node_or_nil({x = pos.x, y = pos.y - 1, z = pos.z})
		if not node_under or
		minetest.get_item_group(node_under.name, "soil") == 0 then
			return
		end

		for _, sap in pairs(aus.saplings) do
			if node.name == sap.sapling then
				minetest.log("action", "A sapling grows into a tree at "..
					minetest.pos_to_string(pos))
				local schem = sap.schematics[math.random(1,#sap.schematics)]
				local adj = {x = pos.x - math.floor(schem.size.x / 2),
										 y = pos.y - 1,
										 z = pos.z - math.floor(schem.size.z / 2)}
				minetest.place_schematic(adj, schem, 'random', nil, true)
				break
			end
		end
	end,
})
