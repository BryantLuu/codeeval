def compressed_sequence(line)
  answer = []
  count = 0
  key = nil
  line.chomp.split.each do |i|
    if key != i
      answer << [count, key] if key
      key = i
      count = 0
    end
    count += 1
  end
  answer << [count, key]
  puts answer.flatten.join(' ')
end

ARGF.each_line do |line|
  compressed_sequence(line)
end
