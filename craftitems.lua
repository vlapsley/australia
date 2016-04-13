-- mods/australia/craftitems.lua

	-- Fiddlehead
minetest.register_craftitem("australia:fiddlehead", {
	description = "Fiddlehead",
	inventory_image = "australia_fiddlehead.png",
	on_use = minetest.item_eat(-1), -- slightly poisonous when raw
})

minetest.register_craftitem("australia:fiddlehead_roasted", {
	description = "Roasted Fiddlehead",
	inventory_image = "australia_fiddlehead_roasted.png",
	on_use = minetest.item_eat(1), -- edible when cooked
})

	-- Fern tuber
minetest.register_craftitem("australia:ferntuber", {
	description = "Fern Tuber",
	inventory_image = "australia_ferntuber.png",
})

minetest.register_craftitem("australia:ferntuber_roasted", {
	description = "Roasted Fern Tuber",
	inventory_image = "australia_ferntuber_roasted.png",
	on_use = minetest.item_eat(3),
})

	-- Bucket muddy_water
bucket.register_liquid(
	"australia:muddy_river_water_source",
	"australia:muddy_river_water_flowing",
	"australia:bucket_muddy_river_water",
	"aus_bucket_muddy_water.png",
	"Muddy Water Bucket",
	{water_bucket = 1}
)

	-- Stairs and slabs
for i in ipairs(aus.treelist) do
	local treename			= aus.treelist[i][1]
	local treedesc			= aus.treelist[i][2]

	if minetest.get_modpath("stairs") then
		stairs.register_stair_and_slab(
			"aus_"..treename.."_wood",
			"australia:"..treename.."_wood",
			{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
			{"aus_"..treename.."_wood.png" },
			treedesc.." Wood Stair",
			treedesc.." Wood Slab",
			default.node_sound_wood_defaults()
		)
	end
end

