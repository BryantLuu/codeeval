def recursive_happy(number)

  if number == 1
    puts "success"
    return
  end
  answer = 0
  
  array = number.to_s.split("").map!(&:to_i)
  array.each do |i|
    answer += i*i
  end

  recursive_happy(answer)

end

File.open(ARGV[0]).each_line do |line| 
  line.strip!
  recursive_happy(line)
end