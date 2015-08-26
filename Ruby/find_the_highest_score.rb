def find_highest_score(line)
  
  rows = line.split(' | ')
  i = 0 
  rows.each do |row|
    rows[i] = row.split(' ')
    i += 1
  end
  print rows

end

File.open(ARGV[0]).each_line do |line|
  line.strip!
  find_highest_score(line)
end
