def ratio(param)
  
  cap_array = []
  low_array = []

  param.scan(/[A-Z]/) do |caps|
    cap_array << caps
  end

  param.scan(/[a-z]/) do |low|
    low_array << low
  end

  total = (cap_array.count + low_array.count).to_f
  cap_amount = '%.2f' % (cap_array.count.to_f / total * 100)
  low_amount = '%.2f' % (low_array.count.to_f / total * 100)
  
  puts "lowercase: #{low_amount} uppercase: #{cap_amount}"


end

ARGF.each_line do |line|
  ratio(line)
end
