-- part 1

max_counts = {
	red = 12,
	green = 13,
	blue = 14,
}

total = 0
for line in io.lines("2.txt") do
	id = line:match("Game (%d+)")
	valid = true
	for count, color in line:gmatch("(%d+) (%a+)") do
		if max_counts[color] < tonumber(count) then
			valid = false
		end
	end
	if valid then
		total = total + id
	end
end

print(total)

-- part 2

power_total = 0
for line in io.lines("2.txt") do
	required = {}
	id = line:match("Game (%d+)")
	valid = true
	for count, color in line:gmatch("(%d+) (%a+)") do
		if required[color] == nil then required[color] = 0 end
		required[color] = math.max(required[color], tonumber(count))
	end
	power = 1
	for k, v in pairs(required) do
		power = power * v
	end
	power_total = power_total + power
end

print(power_total)