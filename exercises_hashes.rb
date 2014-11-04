#1

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

family.select {|k,v| k == :brothers || k == :sisters}

imm_fam = family.select {|k,v| k == :brothers || k == :sisters}

arr = imm_fam.values.flatten

p arr

# TeaLeaf

immediate_family = family.select do |k, v|
  k == :sisters || k == :brothers
end

arr = immediate_family.values.flatten

p arr

#2

name = { name: "David"}
age = { age: "27"}
puts name.merge(age)
puts name
puts age

puts name.merge!(age)
puts name
puts age

#3

hash = { name: "David", age: "27", city: "SF"}

hash.keys.each {|k| puts k}
hash.values.each {|v| puts v}
hash.each {|k,v| puts "My #{k} is #{v}."}

# 3 TeaLeaf
opposites = {positive: "negative", up: "down", right: "left"}

opposites.each_key { |key| puts key }
opposites.each_value { |value| puts value }
opposites.each { |key, value| puts "The opposite of #{key} is #{value}" }

#4

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

p person[:name]

#5
hash = { name: "David", age: "27", city: "SF"}

p hash.has_value?("David")
p hash.has_value?("Jon")


# 5 TeaLeaf

# has_value?

if hash.has_value?("negative")
  puts "Got it!"
else
  puts "Nope!"
end

#6

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

# 1. iterate over the words array, and for each word:
# - turn it in alphabetical order. mode => demo
# 	- if the key exists, append to the key's list
# 		- else, create a new key, with this word in the list

# {demo: ['demo', 'mode'], []}

result = {}

words.each do |word|
	key = word.split("").sort.join
	if result.has_key?(key)
		result[key].push(word)
	else
		result[key] = [word]
	end
end

#rewatch video

p result

# to make it prettier and grouped

result.each do |k, v|
	puts "------"
	p v
end

#7
x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}


# The first hash that was created used a symbol x as the key. The second hash used the string value of the x variable as the key.
# The first hash returned {:x=>"some value"}
# The second hash returned {"hi there"=>"some value"}


#8

# NoMethodError: undefined method `keys' for Array

# A. We're missing keys in an array variable.

# *B. There is no method called keys for Array objects. <= ANSWER*

# C. keys is an Array object, but it hasn't been defined yet.

# D. There's an array of strings, and we're trying to get the string keys out of the array, but it doesn't exist.




