def read_more(line)

  if toolong?(line)
    line
  else
    line = line[0...40]
    rightspace = line.rindex(' ').to_i
    line = line[0...rightspace]
    line + '... <Read More>'
  end

end

def toolong?(x)
  x.length <= 55
end



File.open(ARGV[0]).each_line do |line|
  line.strip
  puts read_more(line).chomp
end