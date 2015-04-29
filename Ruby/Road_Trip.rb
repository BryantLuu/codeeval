problem = ARGF.readlines


problem.each do |i|
	finalprint = []
	solution_array = []
	i.strip!
	first_array = i.split(";")
	
	first_array.each do |i|
		second_array = i.split(",")
		solution_array.push(second_array[1])
	end
	
	almost_there = solution_array.map(&:to_i)
	almost_there2 = almost_there.sort
	x = 0
	almost_there2.each do |i|
		if x-1 < 0
			finalprint.push(almost_there2[x])
			else
			answerfinally = almost_there2[x] - almost_there2[x-1]
			finalprint.push(answerfinally)
		end
		x += 1
	end
	puts finalprint.join(",")
end



