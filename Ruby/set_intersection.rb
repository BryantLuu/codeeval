problem = ARGF.readlines

problem.each do |line|
	line.strip!
	new_array = line.split(";")
	firstarray = new_array[0].split(",")
	x = 0
	firstarray.each do |i|
		if (new_array[1].include? i) && x == 0
				print "#{i}"
				x += 1
			elsif (new_array[1].include? i) && x != 0
				print ",#{i}"
		end
	end
	print "\n"
end