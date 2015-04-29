require 'pry'

File.open(ARGV[0]).each_line do |line|
	num_to_mult = 26
	sum = 0
		freq = Array.new
	line = "#{line} 32412"
	line.gsub!(/\W+/, '').downcase!
	line.gsub!(/\d/, '')
	chars = line.strip.split("")
	if chars.size > 0
		while chars.size > 0 do 
			freq.push line.count(chars[0])
			chars.delete(chars[0])

	binding.pry
		end
		freq.sort! { |x, y| y <=> x }
		freq.each do |i|
			sum = sum + (i * num_to_mult)
			num_to_mult -= 1
		end
		puts sum
	end
end