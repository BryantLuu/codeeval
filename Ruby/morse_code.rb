def morse_code(pattern)
  letters = {
            'A' => '.-',
            'B' => '-...',
            'C' => '-.-.' ,
            'D' => '-..',
            'E' => '.',
            'F' => '..-.',
            'G' => '--.',
            'H' => '....',
            'I' => '..',
            'J' => '.---',
            'K' => '-.-',
            'L' => '.-..',
            'M' => '--',
            'N' => '-.',
            'O' => '---',
            'P' => '.--.',
            'Q' => '--.-',
            'R' => '.-.',
            'S' => '...',
            'T' => '-',
            'U' => '..-',
            'V' => '...-',
            'W' => '.--',
            'X' => '-..-',
            'Y' => '-.--',
            'Z' => '--..',
            '1' => '.----',
            '2' => '..---',
            '3' => '...--',
            '4' => '....-',
            '5' => '.....',
            '6' => '-....',
            '7' => '--...',
            '8' => '---..',
            '9' => '----.',
            '0' => '-----',
            '  ' => ' '
            }
  morse = letters.invert
  sentence = pattern.split("  ")
  sentence.each do |word|
    words_array = word.split
    
    words_array.each do |letter|
      print morse[letter]
    end
    print " "
  end
  puts

end

ARGF.each_line do |line|
  line.strip!
  morse_code(line)
end
