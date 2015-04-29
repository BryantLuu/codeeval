problem = ARGF.readlines
problem.each do |line|
  line.strip!
  array = line.split(", ")

  culprits = array[1].split('')
  answer = array[0]
  culprits.each do |char|
    answer = answer.delete(char)
    end
    answer.strip!
    puts answer
    
  end
