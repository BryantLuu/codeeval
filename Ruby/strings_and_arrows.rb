def bryantFunction(line)
  counter = 0;
end

File.open(ARGV[0]).each_line do |line|
  line.strip!
  bryantFunction(line)
end
