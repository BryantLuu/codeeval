def decode_numbers(problem)
  total = 0
  array = []
  
  (0..26).each do |i|
    total += problem.scan(/#{i}/).count
  end
  print total







end




File.open(ARGV[0]).each_line do |line|
  decode_numbers(line)
end
