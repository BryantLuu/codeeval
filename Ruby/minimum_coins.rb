def minimum_coins(total)
  count1 = (total/5).to_i
  count2 = ((total-(count1*5))/3).to_i
  count3 = ((total-(count1*5)-(count2*3))/1).to_i
  puts count1+count2+count3
end


ARGF.each_line do |line|
  line.strip!
  integer = line.to_i
  minimum_coins(integer)
end
