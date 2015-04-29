def racing_chars(param)
  straight = '|'
  left = '\\'
  right = '/'
  temp = 0

orig_track = [] << param
  
  if /C/ =~ param
    temp = /C/ =~ param  
  elsif /_/ =~ param
    temp = /_/ =~ param
  end

end

ARGF.each_line do |line|
  racing_chars(line)
end
