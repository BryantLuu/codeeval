problem = ARGF.readlines

problem.each do |line|
	line.strip!
	array = line.split(" ")
	x = 0
	array.each do |i|
		capletter = array[x][0].upcase
		array[x].slice!(0)
		array[x].insert(0,capletter)
		print "#{array[x]} "
		x += 1 
		end
		print "\n"
end