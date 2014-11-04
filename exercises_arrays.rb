#1

arr = [1, 3, 5, 6, 9, 11]
number = 3

if arr.include?(number)
	puts "Array includes #{number}"
end

puts arr.include?(3)

# 1 solution from TeaLeaf
arr.each do |num|
  if num == number
    puts "#{number} is in the array."
  end
end

# ... or...
if arr.include?(number)
  puts "#{number} is indeed in the array."
end

#2
	# 1) => 1 - returned because it was delted
	# arr = [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
	
	# 2) => [1, 2, 3] - returned because deleted
	# arr = [["b"], ["a", [1, 2, 3]]]

#3
arr = [["test", "hello", "world"],["example", "mem"]]

puts arr.last[0]

#3 TeaLeaf

# arr.last.first

#4

arr = [15, 7, 18, 5, 12, 8, 5, 1]

# 1. arr.index(5)
# returns 3

# 2. arr.index[5]
# returns NoMethodError: undefined method `[]' for #<Enumerator: [15, 7, 18, 5, 12, 8, 5, 1]:index>
	# from (irb):5
	# from /Users/dubledee/.rvm/rubies/ruby-2.1.2/bin/irb:11:in `<main>'

# 3. arr[5]
# returns 8


#5
string = "Welcome to Tealeaf Academy!"

a = string[6]
# a = e
b = string[11]
# b = T
c = string[19]
# c = A

#6
names = ['bob', 'joe', 'susan', 'margaret']
# names['margaret'] = 'jody'

# names[3] = "jody" => ["bob", "joe", "susan", "jody"]
# arrays are indexed with integers, not strings

#7
array = [1, 3, 5, 7, 9]
new_array = []

array.each do |x|
	new_array.push(x + 2)
end

p array
p new_array

#7 TeaLeaf
arr = [1, 2, 3, 4, 5]
new_arr = []

arr.each do |n|
  new_arr << n + 2
end

p arr
p new_arr