def big_digits(line)


  hash1 = {0 => '-**--', 1 => '--*--', 2 => '***--', 3 => '***--', 4 => '-*---', 5 => '****-',
    6 => '-**--', 7 => '****-', 8 => '-**--', 9 => '-**--'}
  hash2 = {0 => '*--*-', 1 => '-**--', 2 => '---*-', 3 => '---*-', 4 => '*--*-', 5 => '*----',
    6 => '*----', 7 => '---*-', 8 => '*--*-', 9 => '*--*-'}
  hash3 = {0 => '*--*-', 1 => '--*--', 2 => '-**--', 3 => '-**--', 4 => '****-', 5 => '***--',
    6 => '***--', 7 => '--*--', 8 => '-**--', 9 => '-***-'}
  hash4 = {0 => '*--*-', 1 => '--*--', 2 => '*----', 3 => '---*-', 4 => '---*-', 5 => '---*-',
    6 => '*--*-', 7 => '-*---', 8 => '*--*-', 9 => '---*-'}
  hash5 = {0 => '-**--', 1 => '-***-', 2 => '****-', 3 => '***--', 4 => '---*-', 5 => '***--',
    6 => '-**--', 7 => '-*---', 8 => '-**--', 9 => '-**--'}
  hash6 = {0 => '-----', 1 => '-----', 2 => '-----', 3 => '-----', 4 => '-----', 5 => '-----',
    6 => '-----', 7 => '-----', 8 => '-----', 9 => '-----'}

  result = line.scan(/\d/).map(&:to_i)
  puts

   result.each do |number|
     print hash1[number]
   end
   puts   
    result.each do |number|
    print hash2[number]
  end
  puts
    result.each do |number|
    print hash3[number]
  end
  puts
    result.each do |number|
    print hash4[number]
  end
  puts
    result.each do |number|
    print hash5[number]
  end
  puts
    result.each do |number|
     print hash6[number]
  end
  
end

File.open(ARGV[0]).each_line do |line|
  line.strip!
  big_digits(line)
end