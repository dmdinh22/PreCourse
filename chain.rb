def add_three(n)
	new_value = n + 3
	puts new_value
	new_value
end

puts add_three(5)

add_three(5).times { puts 'this should print 8 times'}