-- mods/australia/nodes.lua


--
-- Stone
--

minetest.register_node("australia:red_stone", {
	description = "Red Stone",
	tiles = {"aus_red_stone.png"},
	groups = {cracky=3, stone=1},
	drop = 'australia:red_cobble',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("australia:red_cobble", {
	description = "Red cobblestone",
	tiles = {"aus_red_cobble.png"},
	is_ground_content = false,
	groups = {cracky=3, stone=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("australia:red_stonebrick", {
	description = "Red Stone Brick",
	tiles = {"aus_red_stonebrick.png"},
	is_ground_content = false,
	groups = {cracky=2, stone=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("australia:bluestone", {
	description = "Bluestone (Basalt)",
	tiles = {"aus_bluestone.png"},
	groups = {cracky=2, stone=1},
	drop = 'australia:bluestone_cobble',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("australia:bluestone_cobble", {
	description = "Bluestone cobble",
	tiles = {"aus_bluestone_cobble.png"},
	is_ground_content = false,
	groups = {cracky=2, stone=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("australia:bluestone_brick", {
	description = "Bluestone Brick",
	tiles = {"aus_bluestone_brick.png"},
	is_ground_content = false,
	groups = {cracky=1, stone=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("australia:coral_stone_cauliflower_brown", {
	description = "Sea coral stone",
	tiles = {"aus_coral_stone.png"},
	is_ground_content = true,
	groups = {cracky=3, stone=1, not_in_creative_inventory=1},
	drop = 'default:stone',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("australia:coral_stone_cauliflower_green", {
	description = "Sea coral stone",
	tiles = {"aus_coral_stone.png"},
	is_ground_content = true,
	groups = {cracky=3, stone=1, not_in_creative_inventory=1},
	drop = 'default:stone',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("australia:coral_stone_cauliflower_pink", {
	description = "Sea coral stone",
	tiles = {"aus_coral_stone.png"},
	is_ground_content = true,
	groups = {cracky=3, stone=1, not_in_creative_inventory=1},
	drop = 'default:stone',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("australia:stone_kelp_brown", {
	description = "Sea stone",
	tiles = {"aus_coral_stone.png"},
	is_ground_content = true,
	groups = {cracky=3, stone=1, not_in_creative_inventory=1},
	drop = 'default:stone',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("australia:stone_kelp_giant_brown", {
	description = "Sea stone",
	tiles = {"aus_coral_stone.png"},
	is_ground_content = true,
	groups = {cracky=3, stone=1, not_in_creative_inventory=1},
	drop = 'default:stone',
	sounds = default.node_sound_stone_defaults(),
})



--
-- Soft / Non-Stone
--

minetest.register_node("australia:red_dirt", {
	description = "Red Dirt",
	tiles = {"aus_red_dirt.png"},
	groups = {crumbly=3,soil=1},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("australia:red_sand", {
	description = "Red Sand",
	tiles = {"aus_red_sand.png"},
	groups = {crumbly=3, falling_node=1, sand=1},
	sounds = default.node_sound_sand_defaults(),
})

minetest.register_node("australia:red_gravel", {
	description = "Red Gravel",
	tiles = {"aus_red_gravel.png"},
	groups = {crumbly=2, falling_node=1},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_gravel_footstep", gain=0.5},
		dug = {name="default_gravel_footstep", gain=1.0},
	}),
})

minetest.register_node("australia:mangrove_mud", {
	description = "Mangrove Mud",
	tiles = {"aus_mangrove_mud.png"},
	groups = {crumbly=2, soil=1},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="aus_mangrove_mud", gain=0.4},
		dug = {name="aus_mangrove_mud", gain=0.4},
	}),
})

minetest.register_node("australia:coral_sand_staghorn_blue", {
	description = "Sea coral sand",
	tiles = {"aus_coral_sand.png"},
	is_ground_content = true,
	groups = {crumbly=3, falling_node=1, sand=1, soil=1, not_in_creative_inventory=1},
	drop = 'default:sand',
	sounds = default.node_sound_sand_defaults(),
})

minetest.register_node("australia:coral_sand_staghorn_pink", {
	description = "Sea coral sand",
	tiles = {"aus_coral_sand.png"},
	is_ground_content = true,
	groups = {crumbly=3, falling_node=1, sand=1, soil=1, not_in_creative_inventory=1},
	drop = 'default:sand',
	sounds = default.node_sound_sand_defaults(),
})

minetest.register_node("australia:coral_sand_staghorn_purple", {
	description = "Sea coral sand",
	tiles = {"aus_coral_sand.png"},
	is_ground_content = true,
	groups = {crumbly=3, falling_node=1, sand=1, soil=1, not_in_creative_inventory=1},
	drop = 'default:sand',
	sounds = default.node_sound_sand_defaults(),
})

minetest.register_node("australia:coral_sand_staghorn_yellow", {
	description = "Sea coral sand",
	tiles = {"aus_coral_sand.png"},
	is_ground_content = true,
	groups = {crumbly=3, falling_node=1, sand=1, soil=1, not_in_creative_inventory=1},
	drop = 'default:sand',
	sounds = default.node_sound_sand_defaults(),
})



--
-- Trees
--

aus.treelist = {
	--treename, treedesc, treetrunk_dia, treespaling, treefruit, treefruit_desc, treefruit_scale, treefruit_health
	{"black_box", "Eucalyptus largiflorens: Black Box", 1.0, "eucalyptus", nil, nil, nil, nil },
	{"black_wattle", "Acacia melanoxylon: Black Wattle", 0.75, "acacia", nil, nil, nil, nil },
	{"blue_gum", "Eucalyptus globulus: Blue Gum", 1.0, "eucalyptus", nil, nil, nil, nil },
	{"boab", "Adansonia gregorii: Boab", 1.0, "boab", nil, nil, nil, nil },
	{"bull_banksia", "Banksia grandis: Bull Banksia", 0.33, "banksia", nil, nil, nil, nil },
	{"celery_top_pine", "Phyllocladus aspleniifolius: Celery-top Pine", 1, "pine", nil, nil, nil, nil },
	{"cherry", "Exocarpos cupressiformis: Australian Cherry", 0.5, "berry", "cherry", "Australian Cherries", 0.67, 1 },
	{"cloncurry_box", "Eucalyptus leucophylla: Cloncurry Box", 1.0, "eucalyptus", nil, nil, nil, nil },
	{"coast_banksia", "Banksia integrifolia: Coast Banksia", 1.0, "banksia", nil, nil, nil, nil },
	{"coolabah", "Eucalyptus coolabah: Coolabah", 1.0, "eucalyptus", nil, nil, nil, nil },
	{"daintree_stringybark", "Eucalyptus pellita: Daintree Stringybark", 1.0, "eucalyptus", nil, nil, nil, nil },
	{"darwin_woollybutt", "Eucalyptus miniata: Darwin Woollybutt", 1.0, "eucalyptus", nil, nil, nil, nil },
	{"desert_oak", "Allocasuarina decaisneana: Desert Oak", 1.0, "acacia", nil, nil, nil, nil },
	{"fan_palm", "Licuala ramsayi: Australian Fan Palm", 1.0, "palm", nil, nil, nil, nil },
	{"golden_wattle", "Acacia pycnantha: Golden Wattle", 0.33, "acacia", nil, nil, nil, nil },
	{"grey_mangrove", "Avicennia marina: Grey Mangrove", 0.25, "mangrove", nil, nil, nil, nil },
	{"huon_pine", "Lagarostrobos franklinii: Huon Pine", 1.0, "pine", nil, nil, nil, nil },
	{"illawarra_flame", "Brachychiton acerifolius: Illawarra Flame", 1.0, "illawarra_flame", nil, nil, nil, nil },
	{"jarrah", "Eucalyptus marginata: Jarrah", 1.0, "eucalyptus", nil, nil, nil, nil },
	{"karri", "Eucalyptus diversicolor: Karri", 1.0, "eucalyptus", nil, nil, nil, nil },
	{"lemon_eucalyptus", "Eucalyptus citriodora: Lemon Eucalyptus", 1.0, "eucalyptus", nil, nil, nil, nil },
	{"lemon_myrtle", "Backhousia citriodora: Lemon Myrtle", 0.5, "myrtle", nil, nil, nil, nil },
	{"lilly_pilly", "Syzygium smithii: Lilly Pilly", 0.33, "berry", "lilly_pilly_berries", "Lilly Pilly Berries", 0.67, 1 },
	{"macadamia", "Macadamia tetraphylla: Prickly Macadamia", 0.75, "macadamia", "macadamia", "Macadamia Nuts", 0.67, 1 },
	{"mangrove_apple", "Sonneratia caseolaris: Mangrove Apple", 0.75, "mangrove_apple", "mangrove_apple", "Mangrove Apple", 0.67, 1 },
	{"merbau", "Intsia bijuga: Merbau", 1.0, "merbau", nil, nil, nil, nil },
	{"marri", "Corymbia calophylla: Marri", 1.0, "eucalyptus", nil, nil, nil, nil },
	{"moreton_bay_fig", "Ficus macrophylla: Moreton Bay Fig", 1.0, "fig", "moreton_bay_fig", "Moreton Bay Fig", 0.67, 1 },
	{"mulga", "Acacia aneura: Mulga", 0.5, "acacia", nil, nil, nil, nil },
	{"paperbark", "Melaleuca quinquenervia: Paper Bark", 1.0, "melaleuca", nil, nil, nil, nil },
	{"quandong", "Santalum acuminatum: Desert Quandong", 0.25, "quandong", "quandong", "Desert Quandong", 0.5, 1 },
	{"red_bottlebrush", "Melaleuca citrina: Red Bottlebrush", 0.33, "melaleuca", nil, nil, nil, nil },
	{"river_oak", "Casuarina cunninghamiana: River Oak", 1.0, "acacia", nil, nil, nil, nil },
	{"river_red_gum", "Eucalyptus camaldulensis: River Red Gum", 1.0, "eucalyptus", nil, nil, nil, nil },
	{"rottnest_island_pine", "Callitris preissii: Rottnest Island Pine", 0.75, "pine", nil, nil, nil, nil },
	{"scribbly_gum", "Eucalyptus haemastoma: Scribbly Gum", 1.0, "eucalyptus", nil, nil, nil, nil },
	{"shoestring_acacia", "Acacia stenophylla: Shoestring Acacia", 1.0, "acacia", nil, nil, nil, nil },
	{"snow_gum", "Eucalyptus pauciflora: Snow Gum", 1.0, "eucalyptus", nil, nil, nil, nil },
	{"southern_sassafras", "Atherosperma moschatum: Southern Sassafras", 1, "pine", nil, nil, nil, nil },
	{"stilted_mangrove", "Rhizophora stylosa: Stilted Mangrove", 0.25, "mangrove", nil, nil, nil, nil },
	{"sugar_gum", "Eucalyptus cladocalyx: Sugar Gum", 1.0, "eucalyptus", nil, nil, nil, nil },
	{"swamp_bloodwood", "Corymbia ptychocarpa: Swamp Bloodwood", 1.0, "eucalyptus", nil, nil, nil, nil },
	{"swamp_gum", "Eucalyptus regnans: Swamp Gum", 1.0, "eucalyptus", nil, nil, nil, nil },
	{"swamp_paperbark", "Melaleuca rhaphiophylla: Swamp Paperbark", 0.5, "melaleuca", nil, nil, nil, nil },
	{"tasmanian_myrtle", "Lophozonia cunninghamii: Tasmanian Myrtle", 1.0, "myrtle", nil, nil, nil, nil },
	{"tea_tree", "Melaleuca alternifolia: Tea", 0.5, "melaleuca", nil, nil, nil, nil },
	{"white_box", "Eucalyptus albens: White Box", 1.0, "eucalyptus", nil, nil, nil, nil },
	{"wirewood", "Acacia coriacea: Wirewood", 0.33, "acacia", nil, nil, nil, nil },
}

for i in ipairs(aus.treelist) do
	local treename			= aus.treelist[i][1]
	local treedesc			= aus.treelist[i][2]
	local treetrunk_dia		= aus.treelist[i][3]
	local treespaling		= aus.treelist[i][4]
	local treefruit			= aus.treelist[i][5]
	local treefruit_desc	= aus.treelist[i][6]
	local treefruit_scale	= aus.treelist[i][7]
	local treefruit_health	= aus.treelist[i][8]

	-- tree
	local node_d = {
		description = treedesc.. " Tree",
		tiles = {
			"aus_"..treename.."_treetop.png",
			"aus_"..treename.."_treetop.png",
			"aus_"..treename.."_tree.png"
		},
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = {tree=1,choppy=2,oddly_breakable_by_hand=1,flammable=2},
		sounds = default.node_sound_wood_defaults(),
		on_place = minetest.rotate_node,
	}
	-- Some trunks aren't a meter wide.
	if treetrunk_dia and treetrunk_dia ~= 1 then
		local radius = treetrunk_dia / 2
		node_d.paramtype = "light"
		node_d.drawtype = "nodebox"
		node_d.node_box = { type = "fixed", 
			fixed = { {-radius, -0.5, -radius, radius, 0.5, radius}, }
		}
		node_d.selection_box = { type = "fixed", 
			fixed = { {-radius, -0.5, -radius, radius, 0.5, radius}, }
		}
	end
	minetest.register_node("australia:"..treename.."_tree", node_d)

	-- wood
	minetest.register_node("australia:"..treename.."_wood", {
		description = treedesc.." Wood Planks",
		tiles = {"aus_"..treename.."_wood.png"},
		groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
		sounds = default.node_sound_wood_defaults(),
	})

	-- leaves
	minetest.register_node("australia:"..treename.."_leaves", {
		description = treedesc.." Leaves",
		drawtype = "allfaces_optional",
		visual_scale = 1.3,
		tiles = { "aus_"..treename.."_leaves.png"},
		paramtype = "light",
		is_ground_content = false,
		groups = {snappy=3,flammable=2,leaves=1},
		drop = {
			max_items = 1,
			items = {
				{items = {"australia:"..treename.."_sapling"}, rarity = 50 },
				{items = {"australia:"..treename.."_leaves"} }
			}
		},
		sounds = default.node_sound_leaves_defaults(),
	})

	-- sapling
	minetest.register_node("australia:"..treename.."_sapling", {
		description = treedesc.." Sapling",
		drawtype = "plantlike",
		visual_scale = 1.0,
		tiles = {"aus_"..treespaling.."_sapling.png"},
		inventory_image = "aus_"..treespaling.."_sapling.png",
		wield_image = "aus_"..treespaling.."_sapling.png",
		paramtype = "light",
		sunlight_propagates = true,
		walkable = false,
		is_ground_content = false,
		selection_box = {
			type = "fixed",
			fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
		},
		groups = {snappy=2,dig_immediate=3,flammable=2,attached_node=1},
		sounds = default.node_sound_leaves_defaults(),
	})

	-- fruit, if applicable
	if treefruit then
		minetest.register_node("australia:"..treefruit.."", {
			description = treefruit_desc,
			drawtype = "plantlike",
			visual_scale = treefruit_scale,
			tiles = { "aus_"..treefruit..".png" },
			inventory_image = "aus_"..treefruit..".png",
			wield_image = "aus_"..treefruit..".png",
			paramtype = "light",
			sunlight_propagates = true,
			walkable = false,
			is_ground_content = false,
			selection_box = {
				type = "fixed",
				fixed = {-0.1, -0.5, -0.1, 0.1, -0.25, 0.1},
			},
			groups = {fleshy=3,dig_immediate=3,flammable=2,leafdecay=3,leafdecay_drop=1},
			-- Fruit makes you healthy.
			on_use = minetest.item_eat(treefruit_health),
			sounds = default.node_sound_leaves_defaults(),
			after_place_node = function(pos, placer, itemstack)
				if placer:is_player() then
					minetest.set_node(pos, {name="australia:"..treefruit.."", param2=1})
				end
			end,
		})
	end

	-- fence
	default.register_fence("australia:fence_"..treename.."_wood", {
		description = treedesc.." Fence",
		texture = "aus_"..treename.."_wood.png",
		material = "australia:"..treename.."_wood",
		groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
		sounds = default.node_sound_wood_defaults(),
	})
end



--
-- Ferns
--

	-- Fern
minetest.register_node("australia:fern", {
	description = "Hypolepis rugosula: Ruddy Ground Fern",
	inventory_image = "aus_fern.png",
	drawtype = "plantlike",
	visual_scale = 2,
	paramtype = "light",
	tiles = {"aus_fern_mid.png"},
	walkable = false,
	buildable_to = true,
	groups = {snappy=3,flammable=2,attached_node=1,not_in_creative_inventory=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7/16, -1/2, -7/16, 7/16, 0, 7/16},
	},
	drop = "australia:fern",
})

	-- Small Fern
minetest.register_node("australia:small_fern", {
	description = "Pellaea falcata: Sickle Fern",
	inventory_image = "aus_fern.png",
	drawtype = "plantlike",
	visual_scale = 1,
	paramtype = "light",
	tiles = {"aus_fern.png"},
	walkable = false,
	buildable_to = true,
	groups = {snappy=3,flammable=2,attached_node=1,not_in_creative_inventory=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7/16, -1/2, -7/16, 7/16, 0, 7/16},
	},
	drop = "australia:small_fern",
})

	-- Tree fern leaves
minetest.register_node("australia:tree_fern_leaves", {
	description = "Dicksonia Antarctica: Tree Fern Crown",
	drawtype = "plantlike",
	visual_scale = 2,
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"aus_fern_tree.png"},
	inventory_image = "aus_fern_tree_inv.png",
	walkable = false,
	groups = {snappy=3,flammable=2,attached_node=1},
	drop = {
		max_items = 1,
		items = {
			{
				items = {"autralia:sapling_tree_fern"},
				rarity = 20,
			},
			{
				items = {"australia:tree_fern_leaves"},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7/16, -1/2, -7/16, 7/16, 0, 7/16},
	},
})
minetest.register_node("australia:tree_fern_leaves_02", {
	drawtype = "plantlike",
	visual_scale = 2,
	paramtype = "light",
	tiles = {"aus_fern_big.png"},
	walkable = false,
	groups = {snappy=3,flammable=2,attached_node=1,not_in_creative_inventory=1},
	drop = {
		max_items = 1,
		items = {
			{
				items = {"australia:sapling_tree_fern"},
				rarity = 20,
			},
			{
				items = {"australia:tree_fern_leaves"},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7/16, -1/2, -7/16, 7/16, 0, 7/16},
	},
})

	-- Fern trunk
minetest.register_node("australia:fern_trunk", {
	description = "Dicksonia Antarctica: Tree Fern Trunk",
	drawtype = "nodebox",
	paramtype = "light",
	tiles = {
		"aus_fern_trunk_top.png",
		"aus_fern_trunk_top.png",
		"aus_fern_trunk.png"
	},
	node_box = {
		type = "fixed",
		fixed = {-1/8, -1/2, -1/8, 1/8, 1/2, 1/8},
	},
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {tree=1,choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
	after_destruct = function(pos,oldnode)
        local node = minetest.get_node({x=pos.x,y=pos.y+1,z=pos.z})
        if node.name == "australia:fern_trunk" then 
            minetest.dig_node({x=pos.x,y=pos.y+1,z=pos.z}) 
            minetest.add_item(pos,"australia:fern_trunk")
        end
    end,
})

	-- Giant tree fern leaves
minetest.register_node("australia:tree_fern_leaves_giant", {
	description = "Dicksonia Antarctica: Tree Fern Crown",
	drawtype = "plantlike",
	visual_scale = math.sqrt(8),
	wield_scale = {x=0.175, y=0.175, z=0.175},
	paramtype = "light",
	tiles = {"aus_fern_tree_giant.png"},
	inventory_image = "aus_fern_tree.png",
	walkable = false,
	groups = {
		snappy=3,
		flammable=2,
		attached_node=1,
		not_in_creative_inventory=1
	},
	drop = {
		max_items = 2,
		items = {
			{
				-- occasionally, drop a second sapling instead of leaves
				-- (extra saplings can also be obtained by replanting and
				--  reharvesting leaves)
				items = {"australia:sapling_giant_tree_fern"},
				rarity = 10,
			},
			{
				items = {"australia:sapling_giant_tree_fern"},
			},
			{
				items = {"australia:tree_fern_leaves_giant"},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7/16, -1/2, -7/16, 7/16, 0, 7/16},
	},
})

	-- Giant tree fern leaf part
minetest.register_node("australia:tree_fern_leaf_big", {
	description = "Dicksonia Antarctica: Giant Tree Fern Leaves",
	drawtype = "raillike",
	paramtype = "light",
	tiles = {
		"aus_tree_fern_leaf_big.png",
	},
	walkable = false,
	groups = {
		snappy=3,
		flammable=2,
		attached_node=1,
		not_in_creative_inventory=1
	},
	drop = "",
	sounds = default.node_sound_leaves_defaults(),
})

	-- Giant tree fern leaf end
minetest.register_node("australia:tree_fern_leaf_big_end", {
	description = "Dicksonia Antarctica: Giant Tree Fern Leaf End",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = { "aus_tree_fern_leaf_big_end.png" },
	walkable = false,
	node_box = {
		type = "fixed",
		fixed = {-1/2, -1/2,   1/2, 1/2,   33/64, 1/2},
	},
	selection_box = {
		type = "fixed",
		fixed = {-1/2, -1/2,   1/2, 1/2,   33/64, 1/2},
	},
	groups = {
		snappy=3,
		flammable=2,
		attached_node=1,
		not_in_creative_inventory=1
	},
	drop = "",
	sounds = default.node_sound_leaves_defaults(),
})

	-- Giant tree fern trunk top
minetest.register_node("australia:fern_trunk_big_top", {
	description = "Dicksonia Antarctica: Giant Tree Fern Trunk",
	drawtype = "nodebox",
	paramtype = "light",
	tiles = {
		"aus_fern_trunk_big_top.png^aus_tree_fern_leaf_big_cross.png",
		"aus_fern_trunk_big_top.png^aus_tree_fern_leaf_big_cross.png",
		"aus_fern_trunk_big.png"
	},
	node_box = {
		type = "fixed",
		fixed = {
			{-1/2,  33/64, -1/2, 1/2, 33/64, 1/2},
			{-1/4, -1/2, -1/4, 1/4, 1/2, 1/4},
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {-1/4, -1/2, -1/4, 1/4, 1/2, 1/4},
	},
	groups = {
		tree=1,
		choppy=2,
		oddly_breakable_by_hand=2,
		flammable=3,
		wood=1,
		not_in_creative_inventory=1,
		leafdecay=3 -- to support vines
	},
	drop = "australia:fern_trunk_big",
	sounds = default.node_sound_wood_defaults(),
})

	-- Giant tree fern trunk
minetest.register_node("australia:fern_trunk_big", {
	description = "Dicksonia Antarctica: Giant Tree Fern Trunk",
	drawtype = "nodebox",
	paramtype = "light",
	tiles = {
		"aus_fern_trunk_big_top.png",
		"aus_fern_trunk_big_top.png",
		"aus_fern_trunk_big.png"
	},
	node_box = {
		type = "fixed",
		fixed = {-1/4, -1/2, -1/4, 1/4, 1/2, 1/4},
	},
	selection_box = {
		type = "fixed",
		fixed = {-1/4, -1/2, -1/4, 1/4, 1/2, 1/4},
	},
	groups = {tree=1,choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
	after_destruct = function(pos,oldnode)
        local node = minetest.get_node({x=pos.x,y=pos.y+1,z=pos.z})
        if node.name == "australia:fern_trunk_big" or node.name == "australia:fern_trunk_big_top" then 
            minetest.dig_node({x=pos.x,y=pos.y+1,z=pos.z}) 
            minetest.add_item(pos,"australia:fern_trunk_big")
        end
    end,
})

	-- Tree fern sapling
minetest.register_node("australia:sapling_tree_fern", {
	description = "Dicksonia Antarctica: Tree Fern Sapling",
	drawtype = "plantlike",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"aus_sapling_tree_fern.png"},
	inventory_image = "aus_sapling_tree_fern.png",
	walkable = false,
	groups = {snappy=3,flammable=2,flora=1,attached_node=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7/16, -1/2, -7/16, 7/16, 0, 7/16},
	},
})

	-- Giant tree fern sapling
minetest.register_node("australia:sapling_giant_tree_fern", {
	description = "Dicksonia Antarctica: Giant Tree Fern Sapling",
	drawtype = "plantlike",
	paramtype = "light",
	tiles = {"aus_sapling_tree_fern_giant.png"},
	inventory_image = "aus_sapling_tree_fern_giant.png",
	walkable = false,
	groups = {snappy=3,flammable=2,flora=1,attached_node=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7/16, -1/2, -7/16, 7/16, 0, 7/16},
	},
})



--
-- Ores
--


--
-- Plantlife (non-cubic)
--

	-- Acrostichum speciosum: Mangrove Fern
minetest.register_node("australia:mangrove_fern", {
	description = "Acrostichum speciosum: Mangrove Fern",
	drawtype = "plantlike",
	waving = 1,
	visual_scale = 1.0,
	tiles = {"aus_mangrove_fern.png"},
	inventory_image = "aus_mangrove_fern.png",
	wield_image = "aus_mangrove_fern.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = false,
	groups = {snappy = 3, flammable = 2, flora = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5},
	},
})

	-- Crinum pedunculatum: Mangrove Lily
minetest.register_node("australia:mangrove_lily", {
	description = "Crinum pedunculatum: Mangrove Lily",
	drawtype = "plantlike",
	waving = 1,
	visual_scale = 1.0,
	tiles = {"aus_mangrove_lily.png"},
	inventory_image = "aus_mangrove_lily.png",
	wield_image = "aus_mangrove_lily.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = false,
	groups = {snappy = 3, flammable = 2, flora = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5},
	},
})

	-- Nypa fruticans: Mangrove Palm
minetest.register_node("australia:mangrove_palm_trunk", {
	description = "Nypa fruticans: Mangrove Fern",
	tiles = {"aus_mangrove_palm_trunk.png", "aus_mangrove_mud.png",
		"aus_mangrove_palm_trunk.png"},
	inventory_image = "aus_mangrove_palm_trunk.png",
	wield_image = "aus_mangrove_palm_trunk.png",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy = 2, flammable = 2, flora = 1, attached_node = 1, oddly_breakable_by_hand = 1},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
--	drawtype = "nodebox",
--	node_box = {
--		type = "fixed",
--		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
--	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
})

minetest.register_node("australia:mangrove_palm_leaf_bot", {
	description = "Nypa fruticans: Mangrove Fern",
	tiles = {"aus_mangrove_palm_leaf_bot.png", "aus_mangrove_palm_leaf_bot.png",
		"aus_mangrove_palm_leaf_bot.png"},
	inventory_image = "aus_mangrove_palm_leaf_bot.png",
	wield_image = "aus_mangrove_palm_leaf_bot.png",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {snappy = 3, flammable = 2, flora = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	drawtype = "nodebox",
	nodebox = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
})

minetest.register_node("australia:mangrove_palm_leaf_top", {
	description = "Nypa fruticans: Mangrove Fern",
	tiles = {"aus_mangrove_palm_leaf_top.png", "aus_mangrove_palm_leaf_top.png",
		"aus_mangrove_palm_leaf_top.png"},
	inventory_image = "aus_mangrove_palm_leaf_top.png",
	wield_image = "aus_mangrove_palm_leaf_top.png",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {snappy = 3, flammable = 2, flora = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	drawtype = "nodebox",
	nodebox = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
})

	-- Banksia dallanneyi: Couch Honeypot
minetest.register_node("australia:couch_honeypot", {
	description = "Banksia dallanneyi: Couch Honeypot",
	drawtype = "plantlike",
	waving = 0,
	visual_scale = 1.0,
	tiles = {"aus_couch_honeypot.png"},
	inventory_image = "aus_couch_honeypot.png",
	wield_image = "aus_couch_honeypot.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = false,
	groups = {snappy = 3, flammable = 2, flora = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5},
	},
})

	-- Crinum flaccidum: Darling Lily
minetest.register_node("australia:darling_lily", {
	description = "Crinum flaccidum: Darling Lily",
	drawtype = "plantlike",
	waving = 1,
	visual_scale = 1.0,
	tiles = {"aus_darling_lily.png"},
	inventory_image = "aus_darling_lily.png",
	wield_image = "aus_darling_lily.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = false,
	groups = {snappy = 3, flammable = 2, flora = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5},
	},
})

	-- Astrebla pectinata: Mitchell Grass
minetest.register_node("australia:mitchell_grass", {
	description = "Astrebla pectinata: Mitchell Grass",
	drawtype = "plantlike",
	waving = 0,
	visual_scale = 1.0,
	tiles = {"aus_mitchell_grass.png"},
	inventory_image = "aus_mitchell_grass.png",
	wield_image = "aus_mitchell_grass.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = false,
	groups = {snappy = 3, flammable = 2, flora = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5},
	},
})

	-- Atriplex nummularia: Saltbush
minetest.register_node("australia:saltbush", {
	description = "Atriplex nummularia: Saltbush",
	drawtype = "plantlike",
	waving = 0,
	visual_scale = 1.4,
	tiles = {"aus_saltbush.png"},
	inventory_image = "aus_saltbush.png",
	wield_image = "aus_saltbush.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = false,
	groups = {snappy = 3, flammable = 2, flora = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5},
	},
})

	-- Olearia pannosa: Silver Daisy
minetest.register_node("australia:silver_daisy", {
	description = "Olearia pannosa: Silver Daisy",
	drawtype = "plantlike",
	waving = 1,
	visual_scale = 1.0,
	tiles = {"aus_silver_daisy.png"},
	inventory_image = "aus_silver_daisy.png",
	wield_image = "aus_silver_daisy.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = false,
	groups = {snappy = 3, flammable = 2, flora = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5},
	},
})

	-- Triodia longiceps: Spinifex
minetest.register_node("australia:spinifex", {
	description = "Triodia longiceps: Spinifex",
	drawtype = "plantlike",
	waving = 0,
	visual_scale = 1.2,
	tiles = {"aus_spinifex.png"},
	inventory_image = "aus_spinifex.png",
	wield_image = "aus_spinifex.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = false,
	groups = {snappy = 3, flammable = 2, flora = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5},
	},
})

	-- Telopea speciosissima: Waratah
minetest.register_node("australia:waratah", {
	description = "Telopea speciosissima: Waratah",
	drawtype = "allfaces_optional",
	visual_scale = 1.0,
	tiles = { "aus_waratah.png"},
	inventory_image = { "aus_waratah.png"},
	wield_image = { "aus_waratah.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {snappy = 3, flammable = 2, flora = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
})

	-- Ecklonia radiata: Common Kelp
minetest.register_node("australia:kelp_brown", {
	description = "Ecklonia radiata: Common Kelp",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"aus_kelp_brown.png"},
	inventory_image = "aus_kelp_brown.png",
	wield_image = "aus_kelp_brown.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	climable = true,
	drowning = 1,
	is_ground_content = true,
	groups = {snappy=3, seaplants=1, sea=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5},
	},
})

	-- Macrocystis pyrifera: Giant Kelp
minetest.register_node("australia:kelp_giant_brown", {
	description = "Giant Kelp ",
	drawtype = "plantlike",
	tiles = {"aus_kelp_giant_brown.png"},
	inventory_image = "aus_kelp_giant_brown.png",
	wield_image = "aus_kelp_giant_brown.png",
	paramtype = "light",
	walkable = false,
	climbable = true,
	drowning = 1,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.3, 0.3}
	},
	post_effect_color = {a=64, r=100, g=100, b=200},
	groups = {snappy=3, seaplants=1, sea=1},
	sounds = default.node_sound_leaves_defaults(),
	on_use = minetest.item_eat(1)
})

minetest.register_node("australia:kelp_giant_brown_middle", {
	description = "Giant Kelp middle",
	drawtype = "plantlike",
	tiles = {"aus_kelp_giant_brown_middle.png"},
	inventory_image = "aus_kelp_giant_brown_middle.png",
	wield_image = "aus_kelp_giant_brown_middle.png",
	paramtype = "light",
	walkable = false,
	climbable = true,
	drowning = 1,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
	post_effect_color = {a=64, r=100, g=100, b=200},
	groups = {snappy=3, seaplants=1, sea=1},
	drop = "australia:kelp_giant_brown",
	sounds = default.node_sound_leaves_defaults(),
})

	-- Dipsastraea speciosa: Brain Coral
minetest.register_node("australia:brain_coral", {
	description = "Dipsastraea speciosa: Brain Coral",
	drawtype = "nodebox",
	paramtype = "light",
	tiles = {
		"aus_brain_coral.png",
		"aus_brain_coral.png",
		"aus_brain_coral.png",
		"aus_brain_coral.png",
		"aus_brain_coral.png",
		"aus_brain_coral.png"
	},
	inventory_image = { "aus_brain_coral.png"},
	wield_image = { "aus_brain_coral.png"},
	is_ground_content = true,
	groups = {cracky = 3, coral = 1, stone = 1, attached_node = 1, sea = 1},
	sounds = default.node_sound_leaves_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, -0.125, 0.125, 0.5, 0.125},
			{-0.1875, -0.5, -0.1875, 0.1875, 0.4375, 0.1875},
			{-0.25, -0.5, -0.25, 0.25, 0.375, 0.25},
			{-0.3125, -0.5, -0.3125, 0.3125, 0.3125, 0.3125},
			{-0.375, -0.5, -0.375, 0.375, 0.25, 0.375},
			{-0.4375, -0.4375, -0.4375, 0.4375, 0.1875, 0.4375},
			{-0.5, -0.375, -0.5, 0.5, 0.125, 0.5},
		}
	},
})

	-- Pocillopora damicornis: Cauliflower Coral (brown)
minetest.register_node("australia:cauliflower_coral_brown", {
	description = "Pocillopora damicornis: Cauliflower Coral",
	drawtype = "plantlike",
	visual_scale = 0.75,
	tiles = { "aus_cauliflower_coral_brown.png"},
	inventory_image = { "aus_cauliflower_coral_brown.png"},
	wield_image = { "aus_cauliflower_coral_brown.png"},
	paramtype = "light",
	walkable = false,
	climable = true,
	drowning = 1,
	is_ground_content = true,
	groups = {cracky = 3, coral = 1, stone = 1, attached_node = 1, sea = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5},
	},
})

	-- Pocillopora damicornis: Cauliflower Coral (green)
minetest.register_node("australia:cauliflower_coral_green", {
	description = "Pocillopora damicornis: Cauliflower Coral",
	drawtype = "plantlike",
	visual_scale = 0.75,
	tiles = { "aus_cauliflower_coral_green.png"},
	inventory_image = { "aus_cauliflower_coral_green.png"},
	wield_image = { "aus_cauliflower_coral_green.png"},
	paramtype = "light",
	walkable = false,
	climable = true,
	drowning = 1,
	is_ground_content = true,
	groups = {cracky = 3, coral = 1, stone = 1, attached_node = 1, sea = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5},
	},
})

	-- Pocillopora damicornis: Cauliflower Coral (pink)
minetest.register_node("australia:cauliflower_coral_pink", {
	description = "Pocillopora damicornis: Cauliflower Coral",
	drawtype = "plantlike",
	visual_scale = 0.75,
	tiles = { "aus_cauliflower_coral_pink.png"},
	inventory_image = { "aus_cauliflower_coral_pink.png"},
	wield_image = { "aus_cauliflower_coral_pink.png"},
	paramtype = "light",
	walkable = false,
	climable = true,
	drowning = 1,
	is_ground_content = true,
	groups = {cracky = 3, coral = 1, stone = 1, attached_node = 1, sea = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5},
	},
})

	-- Acropora cervicornis: Staghorn Coral (blue)
minetest.register_node("australia:staghorn_coral_blue", {
	description = "Acropora cervicornis: Staghorn Coral",
	drawtype = "plantlike",
	tiles = {"aus_staghorn_coral_blue.png"},
	inventory_image = "aus_staghorn_coral_blue.png",
	wield_image = "aus_staghorn_coral_blue.png",
	paramtype = "light",
	walkable = false,
	climable = true,
	drowning = 1,
	is_ground_content = true,
	groups = {cracky = 3, coral = 1, stone = 1, attached_node = 1, sea = 1},
	sounds = default.node_sound_stone_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5},
	},
})

	-- Acropora cervicornis: Staghorn Coral (pink)
minetest.register_node("australia:staghorn_coral_pink", {
	description = "Acropora cervicornis: Staghorn Coral",
	drawtype = "plantlike",
	waving = 0,
	visual_scale = 1.0,
	tiles = {"aus_staghorn_coral_pink.png"},
	inventory_image = "aus_staghorn_coral_pink.png",
	wield_image = "aus_staghorn_coral_pink.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	climable = true,
	buildable_to = false,
	drowning = 1,
	is_ground_content = true,
	groups = {cracky = 3, coral = 1, stone = 1, attached_node = 1, sea = 1},
	sounds = default.node_sound_stone_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5},
	},
})

	-- Acropora cervicornis: Staghorn Coral (purple)
minetest.register_node("australia:staghorn_coral_purple", {
	description = "Acropora cervicornis: Staghorn Coral",
	drawtype = "plantlike",
	waving = 0,
	visual_scale = 1.0,
	tiles = {"aus_staghorn_coral_purple.png"},
	inventory_image = "aus_staghorn_coral_purple.png",
	wield_image = "aus_staghorn_coral_purple.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	climable = true,
	buildable_to = false,
	drowning = 1,
	is_ground_content = true,
	groups = {cracky = 3, coral = 1, stone = 1, attached_node = 1, sea = 1},
	sounds = default.node_sound_stone_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5},
	},
})

	-- Acropora cervicornis: Staghorn Coral (yellow)
minetest.register_node("australia:staghorn_coral_yellow", {
	description = "Acropora cervicornis: Staghorn Coral",
	drawtype = "plantlike",
	waving = 0,
	visual_scale = 1.0,
	tiles = {"aus_staghorn_coral_yellow.png"},
	inventory_image = "aus_staghorn_coral_yellow.png",
	wield_image = "aus_staghorn_coral_yellow.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	climable = true,
	buildable_to = false,
	drowning = 1,
	is_ground_content = true,
	groups = {cracky = 3, coral = 1, stone = 1, attached_node = 1, sea = 1},
	sounds = default.node_sound_stone_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5},
	},
})



--
-- Liquids
--

minetest.register_node("australia:muddy_river_water_source", {
	description = "Muddy river water source",
	drawtype = "liquid",
	tiles = {
		{
			name="aus_muddy_river_water_flowing.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	special_tiles = {
		{
			name="aus_muddy_river_water_flowing.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
			backface_culling = false,
		},
	},
	alpha = 224,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "australia:muddy_river_water_flowing",
	liquid_alternative_source = "australia:muddy_river_water_source",
	liquid_viscosity = 1,
	liquid_renewable = true,
	liquid_range = 3,
	post_effect_color = {a = 232, r = 92, g = 80, b = 48},
	groups = {water = 3, liquid = 3, puts_out_fire = 1},
})

minetest.register_node("australia:muddy_river_water_flowing", {
	description = "Flowing muddy river water",
	drawtype = "flowingliquid",
	tiles = {"aus_muddy_river_water_source.png"},
	special_tiles = {
		{
			image="aus_muddy_river_water_flowing.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
		{
			image="aus_muddy_river_water_flowing.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
	},
	alpha = 224,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "australia:muddy_river_water_flowing",
	liquid_alternative_source = "australia:muddy_river_water_source",
	liquid_viscosity = 1,
	liquid_renewable = true,
	liquid_range = 3,
	post_effect_color = {a = 232, r = 92, g = 80, b = 48},
	groups = {water = 3, liquid = 3, puts_out_fire = 1,
		not_in_creative_inventory = 1},
})


--
-- Tools / "Advanced" crafting / Non-"natural"
--



--
-- Misc
--

minetest.register_node("australia:moss", {
	description = "Moss",
	drawtype = "nodebox",
	tiles = {"aus_moss.png"},
	inventory_image = "aus_moss.png",
	wield_image = "aus_moss.png",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = false,
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.46875, 0.5}
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}
	},
	groups = {snappy = 3,flammable = 3},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("australia:moss_with_fungus", {
	description = "Moss with Fungus",
	drawtype = "nodebox",
	tiles = {"aus_moss_fungus.png"},
	inventory_image = "aus_moss_fungus.png",
	wield_image = "aus_moss_fungus.png",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = false,
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.46875, 0.5}
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}
	},
	groups = {snappy = 3,flammable = 3},
	sounds = default.node_sound_leaves_defaults(),
})
