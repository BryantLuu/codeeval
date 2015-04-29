def calc_dist(cord)
  cord.strip!
  cordinates = cord.scan(/-?\d+/).map(&:to_i)
  answer = Math.sqrt((cordinates[0]-cordinates[2])**2 + (cordinates[1]-cordinates[3])**2)
  answer = answer.to_i
  puts answer
end

File.open(ARGV[0]).each do |line|

  calc_dist(line)
end
