def n_times(n)
	1.upto(n) { |x| yield(x) }
end

n_times(5) do |number|
	puts "#{number} situp"
	puts "#{number} pushup"
	puts "#{number} chinup"
end