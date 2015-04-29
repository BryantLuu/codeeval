problem = ARGF.readlines

problem.map do |line|

int = line.to_i
  if int % 2 == 0
    puts "1"
  else
    puts "0"
  end
end    