def three_times
	yield
	yield
	yield
end

def n_times(n)
	n.times do
		yield
	end
end

def fib_up_to(max)
	i, j = 1, 1
	while i < max
		yield i
		i, j = j, i+j
	end
end

three_times {puts "I print 3 times"}
n = 5
n_times(n) {puts "I print #{n} times"}
m = 100
puts "Printing Fibonacci Number up to #{m}"
fib_up_to(m) { |n| puts n }

puts [ 1, 2, 3, 4, 5 ].inject(:+)
puts ( 'a'..'m').inject(:+)