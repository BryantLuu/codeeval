filename = ARGV.first
fileopen = open(filename)
fileread = fileopen.readlines

fileread.each do |i|
puts i.downcase
end