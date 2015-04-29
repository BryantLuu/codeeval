filename = ARGV.first
fileopen = open(filename)
fileread = fileopen.readlines

fileread.each do |i|
	i.strip!
	wordssplit = i.split(" ")
	i = -1
	wordssplit.each do |x|
	print "#{wordssplit[i]} "
	i -= 1
	end
	print "\n"
end