def data_recovery(param)
  sentence_code = param.split(';')
  words = sentence_code[0].split
  order = sentence_code[1].split.map(&:to_i)
  
  print order
  rearranged_sentence = [0..words.length]
  x = 0
  order.each do |i|
    dumb = order[x].to_i
    rearranged_sentence[dumb-1] = words[x]
    print dumb
  x += 1
  end
  print rearranged_sentence
  
end



  ARGF.each_line do |line|
    line.strip!
    data_recovery(line)
  end
