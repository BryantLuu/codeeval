filename = ARGV.first
fileopen = open(filename)
fileread = fileopen.readlines

fileread.each do |i|
	i.strip!
	digits = i.split('').map(&:to_i)
	x = 0
	solution = 0
	digits.each do |numbers|
	solution = solution + numbers
	end
	puts solution
end

