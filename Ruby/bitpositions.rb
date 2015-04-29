problem = ARGF.readlines

problem.each do |i|
	mainbinary = []
	three_ints = i.split(",").map(&:to_i)
	
	while three_ints[0] > 0
		remainder = three_ints[0] % 2
		mainbinary.push(remainder)
		three_ints[0] = (three_ints[0] / 2)
	end
	
	if mainbinary[(three_ints[1]-1)] == mainbinary[(three_ints[2]-1)]
		puts true
		else
		puts false
	end

end
