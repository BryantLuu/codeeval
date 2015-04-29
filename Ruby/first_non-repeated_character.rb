def non_repeat(word)
  array = word.split('')
  hash = Hash.new(0)

  array.each do |letter|
    hash[letter] += 1
  end

  answer = []

  hash.each do |a, b|
    if b == 1
      answer << a
    end
  end
puts answer[0]  
end

ARGF.each_line do |line|
  non_repeat(line)
end
