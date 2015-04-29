filename = ARGV.first
text = open(filename)
textread = text.readlines

textread.each do |i|

solution = i.split(' ')
puts solution[-2]

end

