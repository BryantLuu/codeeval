problem = ARGF.readlines

answer = 0

problem.each do |i|
	o = i.to_i
	answer = answer + o
	end
print answer