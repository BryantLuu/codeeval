file_name = ARGV.first
file_open = open(file_name)
file_read = file_open.readlines

file_read.each do |line|
  
  x = 0
	
  line.each_char do |c|
			if c =~ /[a-zA-Z]/
				if x % 2 == 0
				c.upcase!
				else
				c.downcase!
				end
			x += 1
			end	
			print c
	end
end
