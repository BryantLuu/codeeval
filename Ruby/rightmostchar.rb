filename = ARGV.first
text = open(filename)
textread = text.readlines

textread.each do |line|
	line.rstrip!
	keyletter = line[-1,1]
	solution_chopped = line.chop
	done = solution_chopped.index(keyletter)
	if done != nil
	puts done
	else
	puts "-1"
	end
end	
