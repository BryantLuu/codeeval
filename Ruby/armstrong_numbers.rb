problem = ARGF.readlines

problem.each do |line|
	line.strip!
	array = []
	line.each_char do |i|
		array.push(i)
	end
answer = array.map(&:to_i)
variable = 0
solution = 0
	answer.each do |x|
	solution = solution + answer[variable]**answer.length
	variable += 1
	end
	if solution == line.to_i
		puts "True"
		else
		puts "False"
		end
end
	