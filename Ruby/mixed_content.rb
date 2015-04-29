def mixed_content(param)
  array =param.split(',').map(&:to_i)
  print

ARGF.eachline do |line|
  line.strip!
  mixed_content(line)
end
