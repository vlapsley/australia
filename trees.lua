-- mods/australia/trees.lua

	-- Rainforest tree
function aus.generate_rainforest_tree_schematic(trunk_height, r, trunk, leaf)
	local height = trunk_height * 2 + 1
	local radius = r
	local width = 2 * radius + 1
	local trunk_top = height - 4
	local s = aus.schematic_array(width, height, width)

-- roots, trunk, and extra leaves
	for z = -1,1 do
		for y = 1,trunk_top do
			for x = -1,1 do
				local i = (z+radius)*width*height + y*width + (x+radius) + 1
				if x == 0 and z == 0 then
					s.data[i].name = trunk
					s.data[i].param1 = 255
					s.data[i].force_place = true
				elseif (x == 0 or z == 0) and y < 5 then
					s.data[i].name = trunk
					s.data[i].param1 = 255
					s.data[i].force_place = true
				elseif y > 10 then
					s.data[i].name = leaf
					s.data[i].param1 = 51
				end
			end
		end
	end

-- canopy
	for y = 1,trunk_top+3 do
		if y > trunk_height and (y == trunk_top or math.random(1,height - y) == 1) then
			local x, z = 0, 0
			while x == 0 and z == 0 do
				x = math.random(-1,1) * 2
				z = math.random(-1,1) * 2
			end
			for j = -2,2,2 do
				aus.generate_canopy(s, leaf, {x=j*x, y=y, z=j*z})
			end
		end
	end
	return s
end

	-- Fan Palm tree
function aus.generate_fanpalm_tree_schematic(trunk_height, r, trunk, leaf)
	local height = trunk_height * 2 + 1
	local radius = r
	local width = 2 * radius + 1
	local trunk_top = height - 3
	local s = aus.schematic_array(width, height, width)

-- trunk
	for z = -radius,radius do
		for y = 1,trunk_top do
			for x = -radius,radius do
				local i = (z+radius)*width*height + y*width + (x+radius) + 1
				if x == 0 and z == 0 then
					s.data[i].name = trunk
					s.data[i].param1 = 255
					s.data[i].force_place = true
				end
			end
		end
	end

-- canopy
	for y = 1,trunk_top+1 do
		if y > trunk_height and (y == trunk_top or math.random(1,height - y) == 1) then
			local x, z = 0, 0
			while x == 0 and z == 0 do
				x = math.random(-1,1) * 2
				z = math.random(-1,1) * 2
			end
			for j = -1,1,2 do
				aus.generate_canopy(s, leaf, {x=j*x, y=y, z=j*z})
			end
		end
	end
	return s
end
	-- Mangrove tree
function aus.generate_mangrove_tree_schematic(trunk_height, trunk, leaf)
	local height = trunk_height * 2 + 1
	local radius = 2
	local width = 2 * radius + 1
	local trunk_top = height - 3
	local s = aus.schematic_array(width, height, width)

-- roots, trunk, and extra leaves
	for z = -1,1 do
		for y = 1,trunk_top do
			for x = -1,1 do
				local i = (z+radius)*width*height + y*width + (x+radius) + 1
				if x == 0 and z == 0 then
					s.data[i].name = trunk
					s.data[i].param1 = 255
					s.data[i].force_place = true
				elseif (x == 0 or z == 0) and y < 3 then
					s.data[i].name = trunk
					s.data[i].param1 = 255
					s.data[i].force_place = true
				elseif y > 3 then
					s.data[i].name = leaf
					s.data[i].param1 = 50
				end
			end
		end
	end

-- canopy
	for y = 1,trunk_top+2 do
		if y > trunk_height and (y == trunk_top or math.random(1,height - y) == 1) then
			local x, z = 0, 0
			while x == 0 and z == 0 do
				x = math.random(-1,1) * 2
				z = math.random(-1,1) * 2
			end
			for j = -1,1,2 do
				aus.generate_canopy(s, leaf, {x=j*x, y=y, z=j*z})
			end
		end
	end
	return s
end

	-- Create a canopy of leaves.
function aus.generate_canopy(s, leaf, pos)
	local height = s.size.y
	local width = s.size.x
	local rx = math.floor(s.size.x / 2)
	local rz = math.floor(s.size.z / 2)
	local r1 = 4  -- leaf decay radius
	local probs = {255,200,150,100,75}

	for z = -r1,r1 do
		for y = 0,1 do
			for x = -r1,r1 do
				if x+pos.x >= -rx and x+pos.x <= rx and y+pos.y >= 0 and y+pos.y < height and z+pos.z >= -rz and z+pos.z <= rz then
					local i = (z+pos.z+rz)*width*height + (y+pos.y)*width + (x+pos.x+rx) + 1
					local dist1 = math.sqrt(x^2 + y^2 + z^2)
					local dist2 = math.sqrt((x+pos.x)^2 + (z+pos.z)^2)
					if dist1 <= r1 then
						local newprob = probs[math.max(1, math.ceil(dist1))]
						if s.data[i].name == "air" then
							s.data[i].name = leaf
							s.data[i].param1 = newprob
						elseif s.data[i].name == leaf then
							s.data[i].param1 = math.max(s.data[i].param1, newprob)
						end
					end
				end
			end
		end
	end
end


	-- Create a spheroid of leaves.
function aus.generate_leaves(s, leaf, pos, radius, fruit, adjust)
	local height = s.size.y
	local width = s.size.x
	local rx = math.floor(s.size.x / 2)
	local rz = math.floor(s.size.z / 2)
	local r1 = math.min(3, radius)  -- leaf decay radius
	local probs = {255,200,150,100,75}

	for z = -r1,r1 do
		for y = -r1,r1 do
			for x = -r1,r1 do
				if x+pos.x >= -rx and x+pos.x <= rx and y+pos.y >= 0 and y+pos.y < height and z+pos.z >= -rz and z+pos.z <= rz then
					local i = (z+pos.z+rz)*width*height + (y+pos.y)*width + (x+pos.x+rx) + 1
					local dist1 = math.sqrt(x^2 + y^2 + z^2)
					local dist2 = math.sqrt((x+pos.x)^2 + (z+pos.z)^2)
					if dist1 <= r1 then
						local newprob = probs[math.max(1, math.ceil(dist1))]
						if s.data[i].name == "air" then
							if fruit and (rx < 3 or dist2 / rx > 0.5) and math.random(1,10) == 1 then
								s.data[i].name = fruit
								s.data[i].param1 = 127
							else
								s.data[i].name = leaf
								s.data[i].param1 = newprob
							end
						elseif adjust and s.data[i].name == leaf then
							s.data[i].param1 = math.max(s.data[i].param1, newprob)
						end
					end
				end
			end
		end
	end
end


	-- Generic Tree
function aus.generate_tree_schematic(trunk_height, radii, trunk, leaf, fruit, limbs)
	-- trunk_height refers to the amount of trunk visible below any leaves.
	local height = trunk_height + radii.y * 2 + 2
	local width = 2 * radii.z + 1
	local trunk_top = height-radii.y-1
	local s = aus.schematic_array(width, height, width)

	-- the main trunk
	for y = 1,trunk_top do
		local i = radii.z*width*height + y*width + radii.x + 1
		s.data[i].name = trunk
		s.data[i].param1 = 255
		s.data[i].force_place = true
	end

	-- some leaves for free
	aus.generate_leaves(s, leaf, {x=0, y=trunk_top, z=0}, radii.x, fruit)

	-- Specify a table of limb positions...
	if radii.x > 3 and limbs then
		for _, p in pairs(limbs) do
			local i = (p.z+radii.z)*width*height + p.y*width + (p.x+radii.x) + 1
			s.data[i].name = trunk
			s.data[i].param1 = 255
			s.data[i].force_place = true
			aus.generate_leaves(s, leaf, p, radii.x, fruit, true)
		end
		-- or just do it randomly.
	elseif radii.x > 3 then
		for z = -radii.z,radii.z do
			for y = -radii.y,radii.y do
				for x = -radii.x,radii.x do
					-- a smaller spheroid inside the radii
					if x^2/(radii.x-3)^2 + y^2/(radii.y-3)^2 + z^2/(radii.z-3)^2 <= 1 then
						if math.random(1,6) == 1 then
							local i = (z+radii.z)*width*height + (y+trunk_top)*width + (x+radii.x) + 1
							s.data[i].name = trunk
							s.data[i].param1 = 255
							s.data[i].force_place = true
							aus.generate_leaves(s, leaf, {x=x, y=trunk_top+y, z=z}, radii.x, fruit, true)
						end
					end
				end
			end
		end
	end
	return s
end

	-- Big Tree
function aus.generate_big_tree_schematic(trunk_height, radii, trunk, leaf, fruit, limbs)
	-- trunk_height refers to the amount of trunk visible below any leaves.
	local height = trunk_height + radii.y * 2 + 2
	local width = 2 * radii.z + 1
	local trunk_top = height-radii.y-1
	local s = aus.schematic_array(width, height, width)

	-- the main trunk
	for y = 0,trunk_top do
		local i = radii.z*width*height + y*width + radii.x + 1
		s.data[i].name = trunk
		s.data[i].param1 = 255
		s.data[i].force_place = true
	end

	-- wider trunk and extra leaves
	for z = 0,1 do
		for y = 1,trunk_top do
			for x = 0,1 do
				local i = (z+radii.z)*width*height + y*width + (x+radii.x) + 1
				if x == 0 and z == 0 then
					s.data[i].name = trunk
					s.data[i].param1 = 255
					s.data[i].force_place = true
				elseif (x == 0 or z == 0) and y < trunk_height + 4 then
					s.data[i].name = trunk
					s.data[i].param1 = 255
					s.data[i].force_place = true
				end
			end
		end
	end

	-- some leaves for free
	aus.generate_leaves(s, leaf, {x=0, y=trunk_top, z=0}, radii.x, fruit)

	-- Specify a table of limb positions...
	if radii.x > 3 and limbs then
		for _, p in pairs(limbs) do
			local i = (p.z+radii.z)*width*height + p.y*width + (p.x+radii.x) + 1
			s.data[i].name = trunk
			s.data[i].param1 = 255
			s.data[i].force_place = true
			aus.generate_leaves(s, leaf, p, radii.x, fruit, true)
		end
		-- or just do it randomly.
	elseif radii.x > 3 then
		for z = -radii.z,radii.z do
			for y = -radii.y,radii.y do
				for x = -radii.x,radii.x do
					-- a smaller spheroid inside the radii
					if x^2/(radii.x-3)^2 + y^2/(radii.y-3)^2 + z^2/(radii.z-3)^2 <= 1 then
						if math.random(1,6) == 1 then
							local i = (z+radii.z)*width*height + (y+trunk_top)*width + (x+radii.x) + 1
							s.data[i].name = trunk
							s.data[i].param1 = 255
							s.data[i].force_place = true
							aus.generate_leaves(s, leaf, {x=x, y=trunk_top+y, z=z}, radii.x, fruit, true)
						end
					end
				end
			end
		end
	end
	return s
end

	-- Giant Tree
function aus.generate_giant_tree_schematic(trunk_height, radii, trunk, leaf, fruit, limbs)
	-- trunk_height refers to the amount of trunk visible below any leaves.
	local height = trunk_height + radii.y * 2 + 2
	local width = 2 * radii.z + 1
	local trunk_top = height-radii.y-1
	local s = aus.schematic_array(width, height, width)

	-- the main trunk
	for y = 0,trunk_top do
		local i = radii.z*width*height + y*width + radii.x + 1
		s.data[i].name = trunk
		s.data[i].param1 = 255
		s.data[i].force_place = true
	end

	-- wider trunk and extra leaves
	for z = -1,1 do
		for y = 1,trunk_top do
			for x = -1,1 do
				local i = (z+radii.z)*width*height + y*width + (x+radii.x) + 1
				if x == 0 and z == 0 then
					s.data[i].name = trunk
					s.data[i].param1 = 255
					s.data[i].force_place = true
				elseif (x == 0 or z == 0) and y < trunk_height + 4 then
					s.data[i].name = trunk
					s.data[i].param1 = 255
					s.data[i].force_place = true
				end
			end
		end
	end

	-- some leaves for free
	aus.generate_leaves(s, leaf, {x=0, y=trunk_top, z=0}, radii.x, fruit)

	-- Specify a table of limb positions...
	if radii.x > 3 and limbs then
		for _, p in pairs(limbs) do
			local i = (p.z+radii.z)*width*height + p.y*width + (p.x+radii.x) + 1
			s.data[i].name = trunk
			s.data[i].param1 = 255
			s.data[i].force_place = true
			aus.generate_leaves(s, leaf, p, radii.x, fruit, true)
		end
		-- or just do it randomly.
	elseif radii.x > 3 then
		for z = -radii.z,radii.z do
			for y = -radii.y,radii.y do
				for x = -radii.x,radii.x do
					-- a smaller spheroid inside the radii
					if x^2/(radii.x-3)^2 + y^2/(radii.y-3)^2 + z^2/(radii.z-3)^2 <= 1 then
						if math.random(1,6) == 1 then
							local i = (z+radii.z)*width*height + (y+trunk_top)*width + (x+radii.x) + 1
							s.data[i].name = trunk
							s.data[i].param1 = 255
							s.data[i].force_place = true
							aus.generate_leaves(s, leaf, {x=x, y=trunk_top+y, z=z}, radii.x, fruit, true)
						end
					end
				end
			end
		end
	end
	return s
end

	-- Conifer schematic
function aus.generate_conifer_schematic(trunk_height, radius, trunk, leaf, fruit)
	local height = trunk_height + radius * 3 + 2
	local width = 2 * radius + 1
	local trunk_top = height - radius - 1
	local s = aus.schematic_array(width, height, width)

	-- the main trunk
	local probs = {200,150,100,75,50,25}
	for z = -radius,radius do
		for y = 1,trunk_top do
			-- Gives it a vaguely conical shape.
			local r1 = math.ceil((height - y) / 4)
			-- But rounded at the bottom.
			if y == trunk_height + 1 then
				r1 = r1 -1 
			end

			for x = -radius,radius do
				local i = (z+radius)*width*height + y*width + (x+radius) + 1
				local dist = math.round(math.sqrt(x^2 + z^2))
				if x == 0 and z == 0 then
					s.data[i].name = trunk
					s.data[i].param1 = 255
					s.data[i].force_place = true
				elseif y > trunk_height and dist <= r1 then
					s.data[i].name = leaf
					s.data[i].param1 = probs[dist]
				end
			end
		end
	end

	-- leaves at the top
	for z = -1,1 do
		for y = trunk_top, height-1 do
			for x = -1,1 do
				local i = (z+radius)*width*height + y*width + (x+radius) + 1
				if (x == 0 and z == 0) or y < height - 1 then
					if fruit and math.random(1,10) == 1 then
						s.data[i].name = fruit
						s.data[i].param1 = 127
					else
					s.data[i].name = leaf
					end
					if x == 0 and z == 0 then
						s.data[i].param1 = 255
					else
						s.data[i].param1 = 200
					end
				end
			end
		end
	end
	return s
end

dofile(aus.path.."/trees/waratah.lua")
