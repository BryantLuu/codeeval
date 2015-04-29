def label_sum(line)
  array = []
  line.scan(/Label \d+/) do |m|
    array << m
  end
  answer = 0
  
  array.each do |label|
    label_number = label.split(" ").map(&:to_i)
    answer += label_number[1]
  end
  puts answer

end

File.open(ARGV[0]).each_line do |line|
  line.strip!
  label_sum(line)
end
