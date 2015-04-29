fileopen = ARGF.readlines
fileopen.each do |line|
  line.strip!
  datapoints = line.split(/\D/)
  datapoints.delete('')
  answ = datapoints.map(&:to_i)
  
  distance1 = Math.sqrt (((answ[0] - answ[2]))**2 + ((answ[1] - answ[3])**2))
  distance2 = Math.sqrt (((answ[0] - answ[4]))**2 + ((answ[1] - answ[5])**2))
  distance3 = Math.sqrt (((answ[0] - answ[6]))**2 + ((answ[1] - answ[7])**2))
  distance4 = Math.sqrt (((answ[2] - answ[4]))**2 + ((answ[3] - answ[5])**2))
  distance5 = Math.sqrt (((answ[2] - answ[6]))**2 + ((answ[3] - answ[7])**2))
  distance6 = Math.sqrt (((answ[4] - answ[6]))**2 + ((answ[5] - answ[7])**2))

  array = [distance1, distance2, distance3, distance4, distance5, distance6]
  if array.count(0) > 0
    puts "false"
  elsif distance1 == distance2 && distance3 == distance4 && distance5 == distance6
    puts "true"
  elsif distance1 == distance3 && distance2 == distance5 && distance4 == distance6
    puts "true"
  elsif distance2 == distance3 && distance1 == distance6 && distance4 == distance5
    puts "true"
  else 
    puts "false"
  end
end

