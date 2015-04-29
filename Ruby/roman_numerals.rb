def to_modern_roman(number)
  roman = ''
  legend = { 'M'  => 1000,
             'CM' => 900,
             'D'  => 500,
             'CD' => 400,
             'C'  => 100,
             'XC' => 90,
             'L'  => 50,
             'XL' => 40,
             'X'  => 10,
             'IX' => 9,
             'V'  => 5,
             'IV' => 4,
             'I'  => 1 
           }
  legend.each do |romans, arabic|
    amount = number / arabic
    roman += romans * amount
    number = number - amount*arabic 
  end
    return roman
end

File.open(ARGV[0]).each_line do |line|
  line.strip!
  number = line.to_i
  puts to_modern_roman(number)
end



