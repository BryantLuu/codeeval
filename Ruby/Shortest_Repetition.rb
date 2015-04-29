filename = ARGV.first
text = open(filename)
textread = text.readlines.map(&:strip)

textread.each do |i|

v = 0

	until i[0..v] == i[(v+1)..(2*v+1)]

		if v == i.length
			v -= 1
			break
		end
		
	v += 1
	end
	
	puts v+1
end
