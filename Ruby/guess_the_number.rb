def guess(number)
  list = number.split
  code = list[0].to_i/2 
  lowerbound=0
  
  list.each do |i|
    if i == "Lower"
      code = (code - lowerbound)/2+lowerbound)
    elsif i == "Higher"
      lowerbound = code
      code = (code*2-code)/2+code).round
    end
  end
  puts code
end

ARGF.each_line do |line|
  guess(line)
end
