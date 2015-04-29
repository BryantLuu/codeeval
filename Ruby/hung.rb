def sort_numbers(data_points)
  number_sets = data_points.split(/\D/)
  number_sets.delete('')
  return number_sets
end

def pythagorean_thereom(number1, number2, number3, number4, number5, number6, number7, number8)
  distance1 = Math.sqrt(((number1.to_i - number3.to_i).abs)**2 + ((number2.to_i - number4.to_i).abs)**2)
  distance2 = Math.sqrt(((number1.to_i - number5.to_i).abs)**2 + ((number2.to_i - number6.to_i).abs)**2)
  distance3 = Math.sqrt(((number1.to_i - number7.to_i).abs)**2 + ((number2.to_i - number8.to_i).abs)**2)
  
  if distance1 == distance2 && distance3 == Math.sqrt(distance1**2 + distance2**2)
    puts "true"
  elsif
   distance1 == distance3 && distance2 == Math.sqrt(distance1**2 + distance3**2)
    puts "true"
    puts "hello"
  elsif
    distance2 == distance3 && distance1 == Math.sqrt(distance2**2 + distance3**2)
    puts "true"
  else
    puts "false"
  end

end

def determine_if_square(number_sets)
  pythagorean_thereom(number_sets[0], number_sets[1], number_sets[2], number_sets[3], number_sets[4], number_sets[5], number_sets[6], number_sets[7])
end



File.open(ARGV[0]).map(&:strip).each do |data_points|
  number_sets = sort_numbers(data_points)

  determine_if_square(number_sets)
end