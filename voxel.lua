-- mods/australia/voxel.lua

-- This is only used to handle cases the decoration manager can't, such as 
-- more ore in specific biomes.

-- Define perlin noises used in this mapgen by default
aus.noises = {}

-- Noise 22 : Cave blend							2D
aus.noises[22] = {offset = 0.0, scale = 0.1, spread = {x = 8, y = 8, z = 8}, seed = 4023, octaves = 2, persist = 1.0, lacunarity = 2.0}

-- Noise 23 : Cave noise							2D
aus.noises[23] = {offset = 0.0, scale = 1.0, spread = {x = 400, y = 400, z = 400}, seed = 903, octaves = 3, persist = 0.5, lacunarity = 2.0}

-- function to get noisemaps
function aus.noisemap(i, minp, chulens)
	local obj = minetest.get_perlin_map(aus.noises[i], chulens)
	if minp.z then
		return obj:get3dMap_flat(minp)
	else
		return obj:get2dMap_flat(minp)
	end
end

-- useful function to convert a 3D pos to 2D
function pos2d(pos)
	if type(pos) == "number" then
		return {x = pos, y = pos}
	elseif pos.z then
		return {x = pos.x, y = pos.z}
	else
		return {x = pos.x, y = pos.y}
	end
end

-- Define content IDs
-- A content ID is a number that represents a node in the core of Minetest.
-- Every nodename has its ID.
-- The VoxelManipulator uses content IDs instead of nodenames.

local node = {}

local nodes = {
	-- Ground nodes
	{"stone", "default:stone"},
	{"dirt", "default:dirt"},
	{"sand", "default:sand"},

	-- Liquids
	{"river_water_source", "default:river_water_source"},
	{"muddy_river_water_source", "australia:muddy_river_water_source"},
	{"water_source", "default:water_source"},

	-- Air and Ignore
	{"air", "air"},
	{"ignore", "ignore"},

	-- Resources
	{"coalblock", "default:coalblock"},
	{"copper", "default:stone_with_copper"},
	{"diamond", "default:stone_with_diamond"},
	{"gold", "default:stone_with_gold"},
	{"iron", "default:stone_with_iron"},

}

for _, i in pairs(nodes) do
	node[i[1]] = minetest.get_content_id(i[2])
end

-- Create a table of biome ids, so I can use the biomemap.
if not aus.biome_ids then
	aus.biome_ids = {}
	for name, desc in pairs(minetest.registered_biomes) do
		local i = minetest.get_biome_id(desc.name)
		aus.biome_ids[i] = desc.name
	end
end

-- the mapgen function
function aus.generate(minp, maxp, seed)

	-- minp and maxp strings, used by logs
	local minps, maxps = minetest.pos_to_string(minp), minetest.pos_to_string(maxp)

	-- The VoxelManipulator, a complicated but speedy method to set many nodes at the same time
	local vm, emin, emax = minetest.get_mapgen_object("voxelmanip")
	local heightmap = minetest.get_mapgen_object("heightmap")
	local water_level = 1

	local data = vm:get_data() -- data is the original array of content IDs (solely or mostly air)
	-- Be careful: emin ≠ minp and emax ≠ maxp !
	-- The data array is not limited by minp and maxp. It exceeds it by 16 nodes in the 6 directions.
	-- The real limits of data array are emin and emax.
	-- The VoxelArea is used to convert a position into an index for the array.
	local area = VoxelArea:new({MinEdge = emin, MaxEdge = emax})
	local ystride = area.ystride -- Tip : the ystride of a VoxelArea is the number to add to the array index to get the index of the position above. It's faster because it avoids to completely recalculate the index.
	local zstride = area.zstride

	local chulens = vector.add(vector.subtract(maxp, minp), 1) -- Size of the generated area, used by noisemaps
	local minp2d = pos2d(minp)

	-- The biomemap is a table of biome index numbers for each horizontal
	--  location. It's created in the mapgen, and is right most of the time.
	--  It's off in about 1% of cases, for various reasons.
	-- Bear in mind that biomes can change from one voxel to the next.
	local biomemap = minetest.get_mapgen_object("biomemap")

	-- Calculate the noise values
	local n22 = aus.noisemap(22, minp2d, chulens)
	local n23 = aus.noisemap(23, minp2d, chulens)

	local node_match_cache = {}

	-- the mapgen algorithm
	local index_2d = 0
	local write = false
	local index_3d, air_count, ground
	local index_3d_below, index_3d_above, surround
	local biome, sr
	local stone_type, stone_depth, n23_val

	for z = minp.z, maxp.z do -- for each YZ plane
		for x = minp.x, maxp.x do -- for each vertical line in this plane
			index_2d = index_2d + 1

			local index_3d = area:index(x, maxp.y, z) -- index of the data array, matching the position {x, y, z}
			local air_count = 0
			local ground = math.max(heightmap[index_2d], 0) - 5

			for y = maxp.y, minp.y, -1 do -- for each node in vertical line
				local index_3d_below = index_3d - ystride
				local index_3d_above = index_3d + ystride

				-- Determine if a plant/dirt block can be placed without showing.
				-- Avoid the edges of the chunk, just to make things easier.
				if y < maxp.y and x > minp.x and x < maxp.x and z > minp.z and z < maxp.z and (data[index_3d] == node["sand"] or data[index_3d] == node["dirt"]) then
					if data[index_3d_above] == node["river_water_source"] or data[index_3d_above] == node["muddy_river_water_source"] or data[index_3d_above] == node["water_source"] then
						-- Check to make sure that a plant root is fully surrounded.
						-- This is due to the kludgy way you have to make water plants
						--  in minetest, to avoid bubbles.
						for x1 = -1,1,2 do
							local n = data[index_3d+x1] 
							if n == node["river_water_source"] or n == node["muddy_river_water_source"] or n == node["water_source"] or n == node["air"] then
								surround = false
							end
						end
						for z1 = -zstride,zstride,2*zstride do
							local n = data[index_3d+z1] 
							if n == node["river_water_source"] or n == node["muddy_river_water_source"] or n == node["water_source"] or n == node["air"] then
								surround = false
							end
						end
					end

				-- Extra resources in ground per biome.
				if y < ground and (data[index_3d] == node["air"] or data[index_3d] == node["river_water_source"] or data[index_3d] == node["muddy_river_water_source"] or data[index_3d] == node["water_source"]) then
					local biome = aus.biome_ids[biomemap[index_2d]]
					local stone_type = node["stone"]
					local stone_depth = 1
					local n23_val = n23[index_2d] + n22[index_2d]

					-- Change stone per biome.
					if data[index_3d_below] == node["stone"] then
						data[index_3d_below] = stone_type
						if stone_depth == 2 then
							data[index_3d_below - ystride] = stone_type
						end
						write = true
					end
					if data[index_3d_above] == node["stone"] then
						data[index_3d_above] = stone_type
						if stone_depth == 2 then
							data[index_3d_above + ystride] = stone_type
						end
						write = true
					end

					if data[index_3d] == node["air"] then
						air_count = air_count + 1
					end
				end

				if data[index_3d] ~= node["air"] then
					air_count = 0
				end
				index_3d = index_3d_below
			end
		end
	end


	-- execute voxelmanip boring stuff to write to the map...
	if write then
		vm:set_data(data)
	end

	if write then
		-- This seems to be necessary to avoid lighting problems.
		vm:calc_lighting()
	end

	if write then
		vm:write_to_map()
	end

	-- Deal with memory issues. This, of course, is supposed to be automatic.
	local mem = math.floor(collectgarbage("count")/1024)
	if mem > 500 then
		print("MOD: Australia is manually collecting garbage as memory use has exceeded 500K.")
		collectgarbage("collect")
	end
end


-- Call the mapgen function aus.generate on mapgen.
minetest.register_on_generated(aus.generate)
