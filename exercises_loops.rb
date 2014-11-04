#1
x = [1, 2, 3, 4, 5]
x.each do |a|
	a + 1
end

# returns [1, 2, 3, 4, 5] because there is nothing to do with the iteration.
# nothing printed out, nothing saved. at conclusion of iteration, nothing happens to original array, theres no new array created
# there is this new local variable a created but it's gone as soon as the iteration is complete.

#2 - could just put x = gets.chomp without second line. Would return x as is unless "STOP"
x = ""
while x != "STOP" do
  puts "Hi, How are you feeling?"
  ans = gets.chomp
  puts "Want me to ask you again?"
  x = gets.chomp
end

#3 - not too familiar with, need to review. Do not understand each_with_index, review Ruby Docs.
vices = ["sex", "drugs", "alcohol"]

vices.each_with_index { |item, index|
	puts "#{index + 1}. #{item}"
}

#4 David's solution - works!
def countdown(start)
	puts start
	if start > 0 
		countdown(start -= 1)
	end
end

puts countdown(10)
puts countdown(69)
puts countdown(-3)

#4 Solution from Tea Leaf:
def count_to_zero(number)
  if number <= 0
    puts number
  else
    puts number
    count_to_zero(number-1)
  end
end

count_to_zero(10)
count_to_zero(20)
count_to_zero(-3)