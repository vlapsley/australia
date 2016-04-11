-- mods/australia/craftitems.lua

bucket.register_liquid(
	"australia:muddy_water_source",
	"australia:muddy_water_flow",
	"australia:bucket_muddy_water",
	"australia_bucket_muddy_water.png",
	"Muddy Water Bucket"
)

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

