require 'time'
def delta_time(times)
  time_array = times.split(" ")
  
  time_a = Time.parse(time_array[0]).to_i
  time_b = Time.parse(time_array[1]).to_i

  difference = (time_a - time_b).abs
  seconds = difference % 60
  difference = (difference - seconds) / 60
  minutes = difference % 60
  difference = (difference - minutes) / 60
  hours = difference % 24

  puts '%.2d' % hours + ":" '%.2d' % minutes + ":" '%.2d' % seconds 
end

File.open(ARGV[0]).each_line do |line|
  line.strip!
  delta_time(line)
end

