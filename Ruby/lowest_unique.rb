def lowest_unique(param)
  numberlist = param.split
  hash = Hash.new(0)
  count = 0
  array = []
  numberlist.each do |number|
    hash[number] += 1
  end
  y = 0

  hash.each do |a, b|
    if b == 1
      array << a
    end
  end
  array.sort!
  switch = false
  numberlist.each_with_index do |a, b|
    if array[0] == a
      print b+1
      switch = true
    end
  end
  if switch == false
    print "0"
  end
  puts

end

ARGF.each_line do |line|
  lowest_unique(line)
end