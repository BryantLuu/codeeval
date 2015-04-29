filename = ARGV.first

problem = open(filename)
problemstring = problem.readlines

problemstring.each do |line|
	varible	= line.split(' ')
	varible2 = varible.sort_by {|x| -x.length}
	puts varible2[0]
end
