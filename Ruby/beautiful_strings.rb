problem = ARGF.readlines

problem.each do |line|
	line.strip!
	line = line.downcase!
	answer = ""
	line.each_char do |c|
		if c =~ /[a-z]/
		answer.insert(0, c)
		end
	end
array = []
	a = answer.count "a"
	b = answer.count "b"
	c = answer.count "c"
	d = answer.count "d"
	e = answer.count "e"
	f = answer.count "f"
	g = answer.count "g"
	h = answer.count "h"
	i = answer.count "i"
	j = answer.count "j"
	k = answer.count "k"
	l = answer.count "l"
	m = answer.count "m"
	n = answer.count "n"
	o = answer.count "o"
	p = answer.count "p"
	q = answer.count "q"
	r = answer.count "r"
	s = answer.count "s"
	t = answer.count "t"
	u = answer.count "u"
	v = answer.count "v"
	w = answer.count "w"
	x = answer.count "x"
	y = answer.count "y"
	z = answer.count "z"
array.push(a)
array.push(b)
array.push(c)
array.push(d)
array.push(e)
array.push(f)
array.push(g)
array.push(h)
array.push(i)
array.push(j)
array.push(k)
array.push(l)
array.push(m)
array.push(n)
array.push(o)
array.push(p)
array.push(q)
array.push(r)
array.push(s)
array.push(t)
array.push(u)
array.push(v)
array.push(w)
array.push(x)
array.push(y)
array.push(z)

array = array.map(&:to_i)
array = array.sort.reverse

variable = 0
maxvalue = 26
	array.each do |itstime|
		array[variable] = array[variable]*(maxvalue-variable)
		variable += 1
	end
	answer = array.inject(:+)
	puts answer

end