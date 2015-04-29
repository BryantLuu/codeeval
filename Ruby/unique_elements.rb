problem = ARGF.readlines

problem.each do |line|
	line.strip!
	answer = line.split(",")
	
	x = 0
	final = []
	answer.each do |i|
		if answer[x] != answer[x+1]
			final.push(answer[x])
		end
		x += 1
	end
	answer = final.join(",")
	answer.strip!
	puts answer
end