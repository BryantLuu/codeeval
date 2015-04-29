problem = ARGF.readlines
problem.each do |line|
  line.strip!
  array = line.split(",")
  
  newarray = array.combination(4).to_a

  combo = 0
  newarray.each do |x|
    answer = x.map(&:to_i)
    added = answer[0]+answer[1]+answer[2]+answer[3]
    
    if added == 0
      combo += 1
    end
  end
  puts combo
end
