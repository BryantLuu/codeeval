def juggling_with_zeros(problem)
  answer = ''
  problem.each_slice(2) do |a, b|
    if a == '0'
      answer << '0' * b.size
    else
      answer << '1' * b.size
    end
  end
  puts answer.to_i(2)
end

File.open(ARGV[0]).each_line do |line|
  line.strip!
  juggling_with_zeros(line.split)
end