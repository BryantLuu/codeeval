def words_to_digit(file)
numbers = {zero: 0, one: 1, two: 2, three: 3, four: 4, five: 5, six: 6, seven: 7, eight: 8, nine: 9 }
	file.each do |x|
		print numbers[:"#{x}"]
	end
end

File.open(ARGV[0]).each_line do |line|
	line.strip!
	answer = line.split(";")
	words_to_digit(answer)
	puts "\n"
end