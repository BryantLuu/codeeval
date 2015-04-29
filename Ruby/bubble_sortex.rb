
File.open(ARGV[0]).each_line do |line|
  prob = line.split("|")
  ans, n = prob[0].split.map(&:to_i), prob[1].to_i

  (0..ans.length-n).each do |i|
    ans[i, n+1] = ans[i, n+1].sort
  end
  puts ans.join(" ")
end