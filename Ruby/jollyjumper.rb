def jollyjumper(array)
	final = []
	x = 0

	while x < array.length-1

		absolute = (array[x] - array[x+1]).abs
		final.push(absolute)
		x += 1

	end
	
	y = 0

	final.sort!.reverse!

	while y < final.length-1

		if final[y]-final[y+1] != 1
			puts "Not jolly"
			break
		end

		y += 1

		if y == final.length-1
			puts "Jolly"
		end

	end

end

File.open(ARGV[0]).each_line do |line|
	line.strip!
	array = line.split(" ").map!(&:to_i)
	jollyjumper(array)
end