def double_squares problem
  total = 0
  limit = Math.sqrt(problem/2)
  (0..limit).each do |i|
    answer = Math.sqrt(problem - i*i)
    if answer - answer.to_i == 0
      total += 1
    end
  end
  puts total
end

problem = []

File.open(ARGV[0]).each_line { |line| problem << line.to_i }

problem.shift
problem.each { |i| double_squares i }
