def detecting_cycles(seq)
  sequence = seq.split
  hash = {}
  sequence.each_with_index do |x, i|
    if hash.has_key? x
      print sequence[hash[x]..i-1].join(' ')
      puts
      break
    else
      hash[x] = i
    end
  end
end

ARGF.each_line do |line|
  line.strip!
  detecting_cycles(line)
end
