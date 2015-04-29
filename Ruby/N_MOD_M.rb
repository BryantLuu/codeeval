problem = ARGF.readlines

problem.each do |i|
	i.strip!
	m_n = i.split(",").map(&:to_i)
	#print m_n
	if m_n[0] == m_n[1]
		puts "0"
	elsif m_n[0] < m_n[1]
		puts m_n[0]
	else
	x = m_n[1]
		until	m_n[0] < m_n[1]
			m_n[1] = m_n[1] + x
		end
			puts m_n[0]-(m_n[1]-x)
	end
end
