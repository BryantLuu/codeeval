def translation(param)
  dictionary = {
    'a' => 'y',
    'b' => 'h',
    'c' => 'e',
    'd' => 's',
    'e' => 'o',
    'f' => 'c',
    'g' => 'v',
    'h' => 'x',
    'i' => 'd',
    'j' => 'u',
    'k' => 'i',
    'l' => 'g',
    'm' => 'l',
    'n' => 'b',
    'o' => 'k',
    'p' => 'r',
    'q' => 'z',
    'r' => 't',
    's' => 'n',
    't' => 'w',
    'u' => 'j',
    'v' => 'p',
    'w' => 'f',
    'x' => 'm',
    'y' => 'a',
    'z' => 'q'
  }

  (0..param.length).each do |char|
    if param[char] != ' '
      print dictionary[param[char]]
    else
      print ' '
    end
  end
  puts

end

ARGF.each_line do |line|
  translation(line)
end

