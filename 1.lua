mappings = {
	one='o1e',
	two='t2o',
	three='t3e',
	four='f4r',
	five='f5e',
	six='s6x',
	seven='s7n',
	eight='e8t',
	nine='n9e',
}

function p1(part)
	sum = 0
	for line in io.lines('1.txt') do
		n = {}
		if part == 2 then
			for k,v in pairs(mappings) do
				line = string.gsub(line, k,v)
			end
		end
		for i=1, #line do
			c = string.sub(line,i,i)
			if tonumber(c) then
				table.insert(n,c)
			end
		end
		sum = sum + n[1]*10+n[#n]
	end

	return "part " .. part .. " : " .. sum
end

print(p1(1))
print(p1(2))
