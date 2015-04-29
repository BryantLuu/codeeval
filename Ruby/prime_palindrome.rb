require 'prime'
array = []
Prime.each(1000) do |prime|
	array.push(prime)
end
x = -1

array.each do |i|
	if array[x].to_s == array[x].to_s.reverse
	puts array[x]
	break
	end
	x -= 1
end