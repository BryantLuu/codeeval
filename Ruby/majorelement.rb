def count_frequency(numbers)
  counts = Hash.new(0)
  for number in numbers
    counts[number] += 1
  end
  found = false
  
  array = []
  counts.each do |a, b|
    if b > numbers.length/2
      puts a
      break
    end
  end

end


ARGF.each_line do |line|
  line.strip!
  array = line.split(',').map(&:to_i)
  count_frequency(array)
end
