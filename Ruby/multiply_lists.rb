def multiply_lists (array1, array2)
  x = 0
  array1 = array1.split(' ').map(&:to_i)
  array2 = array2.split(' ').map(&:to_i)
  answer = []
  array1.length-1
  
  array1.each do |i|
  
    if x == array1.length-1
      print "#{array1[x]*array2[x]}\n"
      x += 1
    else  
      print "#{array1[x]*array2[x]} "
      x += 1
    end
  end
  #print  array1.length
end




ARGF.each_line do |line|
  array = line.split('|')
  multiply_lists(array[0], array[1])
end
