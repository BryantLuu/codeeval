problem = ARGF.readlines

problem.each do |line|
	number = line.to_i
	ary = Array.new(line.to_i)
	ary[0] = 0
	ary[1] = 1
	x = 2
	limit = ary.length+1
	until x == limit
		ary[x] = ary[x-1] + ary[x-2]
		x += 1
	end
	puts ary[line.to_i]
end
