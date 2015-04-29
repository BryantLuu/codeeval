def fizzbuzz(xyz)
	split = xyz.split(" ")
	divisble1 = split[0]
	divisble2 = split[1]

	for i in 1..split[2].to_i

		if (i % split[1].to_i) == 0 && i % split[0].to_i == 0
		print "FB "
		elsif (i % split[0].to_i) == 0 && i % split[1].to_i != 0
		print "F "
		elsif (i % split[1].to_i) == 0 && i % split[0].to_i != 0
		print "B "
		else
		print "#{i} "
		end
	end
	print "\n"
end
File.open(ARGV[0]).each_line do |line|
	fizzbuzz line
end
