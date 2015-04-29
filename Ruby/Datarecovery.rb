filename = ARGV.first
open_file = open(filename)
lines_of_file = open_file.readlines

lines_of_file.each do |line|
  line.strip!
  sentence_code = line.split(";")
	code = sentence_code[1].split(" ").map(&:to_i)
	sentence = sentence_code[0].split(" ")
	x = 0
	answer = [0..sentence.length]
	code.each do |i|
		a = code[x].to_i - 1
		answer[a] = sentence[x]
	x += 1
	end
	
	y = 0
	answer.each do |i|
	
		if answer[y] == nil
			answer[y] = sentence[sentence.length-1]
			break
		end
		
		if y == sentence.length-2
			answer[sentence.length-1] = sentence[sentence.length-1]
		end
	y += 1
	end
	final = answer.join(" ")
	final.strip!
	puts final
end
	