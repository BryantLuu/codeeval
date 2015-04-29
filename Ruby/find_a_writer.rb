def find_a_writer(line)
  line.strip!
  seperated = line.split "| "
  key = seperated[1].split(" ").map(&:to_i)
  
  key.each do |char|
    print seperated[0][char-1]
  end
  puts
end


ARGF.each_line do |line|
  find_a_writer(line)
end