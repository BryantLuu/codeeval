problem = ARGF.readlines
problem.each do |line|
	array = []
	array = line.split(" ").map(&:to_f)
  finishedarray =[]
	array.sort!
	array.each do |line|
	finishedarray.push('%.3f' % line)
	end
  print finishedarray.join(" ")
  puts
end