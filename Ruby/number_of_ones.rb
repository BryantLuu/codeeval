def number_of_ones(input)
	remainder = 0
	while input > 0
		remainder = (remainder) + (input % 2) 
		input = input / 2
	end
	puts remainder
end

	
File.open(ARGV[0]).each_line do |line|
	makeint = line.to_i
	number_of_ones(makeint)

end