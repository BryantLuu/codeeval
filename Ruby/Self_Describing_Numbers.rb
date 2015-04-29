text = ARGF.readlines

text.each do |line|
	line.strip!
	
	for char in 0..line.length-1
		a = line.count "#{char}"
		a = a.to_s

		if a != line[char]

			puts "0"
			break
		end
			if char == line.length-1
				puts "1"
			end
	end
end
