def age_distribution(line)
  
  if line.between?(0, 2)
    puts 'Still in Mama\'s arms'
  elsif line.between?(3, 4)
    puts 'Preschool Maniac'
  elsif line.between?(5, 11)
    puts 'Elementary school' 
  elsif line.between?(12, 14)
    puts 'Middle school' 
  elsif line.between?(15, 18)
    puts 'High school' 
  elsif line.between?(19, 22)
    puts 'College'
  elsif line.between?(23, 65) 
    puts'Working for the man' 
  elsif line.between?(66, 100)
    puts 'The Golden Years' 
  elsif line > 100 || line < 0 
    puts "This program is for humans"
  end

end

File.open(ARGV[0]).each_line do |line|
  line.strip!
  number_convert = line.to_i
  age_distribution(number_convert)
end
