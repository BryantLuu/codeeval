def interrupted_bubble_sort(param)
  problem_code = param.split(' | ')
  problem = problem_code[0].split(' ').map(&:to_i)
  code = problem_code[1].to_i
  
  if code < 1
    puts problem.join(' ')
    return
  end

  tick = 0

  until tick == code
    0.upto(problem.length-2) do |i|
      if problem[i] > problem[i+1]
         problem[i], problem[i+1] = problem[i+1], problem[i]
       end
    end
  tick += 1    
  end

puts answer = problem.join(' ')

end

ARGF.each_line do |line|
  line.strip!
  interrupted_bubble_sort(line)
end


