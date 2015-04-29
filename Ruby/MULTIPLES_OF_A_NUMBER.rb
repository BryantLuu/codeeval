filename = ARGV.first
text = open(filename)
textread = text.readlines

textread.each do |i|

	strippedtext = i.strip
	solution = strippedtext.split(',').map(&:to_i)
	multiple = solution[1]
	
	while solution[1] < solution[0]
		solution[1] = solution[1] + multiple
	end
	puts solution[1]
end
