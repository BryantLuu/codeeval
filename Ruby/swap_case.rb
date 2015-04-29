filename = ARGV.first
text = open(filename)
textread = text.read

puts textread[1]
