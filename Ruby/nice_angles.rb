def convert_angles(number)
  hour = number.to_i
  difference = number.to_f - hour
  minute = '%.2d' % (difference * 60).to_i
  second = '%.2d' % ((difference - (minute.to_f / 60))*3600).to_i
  puts "#{hour}.#{minute}\'#{second}\""
end

File.open(ARGV[0]).each_line do |line|
line.strip!
convert_angles(line)
end