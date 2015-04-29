def emailvalid?(guess)
  if guess =~ /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    puts "true"
  else
    puts "false"
  end
end

ARGF.each_line do |line|
  line.strip!
  emailvalid?(line)
end

