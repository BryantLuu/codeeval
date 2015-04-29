problem = ARGF.readlines

problem.each do |line|
	line.strip!
	input_and_code = line.split(" : ")
	code = input_and_code[1].split(", ")
	input = input_and_code[0].split(" ")

	code.each do |line|
		swap_elements = line.split("-")
		first = swap_elements[0].to_i
		second = swap_elements[1].to_i
	input[first], input[second] = input[second], input[first]
	end
	solution = input.join(" ")
	solution.strip!
	puts solution
	
end
	
