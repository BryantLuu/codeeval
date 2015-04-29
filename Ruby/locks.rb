def locks(param)
  array = param.split
  
  print array
end

ARGF.each_line do |line|
  locks(line)
end
