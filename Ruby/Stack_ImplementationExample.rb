class Stack
  def initialize
    @stack = []
  end
 
  def push(n)
    @stack += [n]
  end
 
  def pop
    pop    = @stack[-1]
    @stack = @stack[0..-2]
    return pop
  end
end




ARGF.lines do |line|
  nums = line.scan(/\-?\d+/).map(&:to_i)
  st = Stack.new
  nums.each { |n| st.push n  }
  loop do
    print "#{st.pop} "
    break puts unless st.pop
  end
end