#1
array = [1,2,3,4,5,6,7,8,9,10]

#one line version
array.each {|x| puts x}

# Tea Leaf multi-line version
array.each do |number|
  puts number
end

#2
array.each {|x| puts x if x > 5 }

#Tea Leaf multi-line version
arr.each do |number|
  if number > 5
    puts number
  end
end

#alternate

arr.each do |number|
  puts number if number > 5
end

#3
new_array = array.select { |x| x.odd? }

puts new_array

# Tea Leaf one line version
new_array = arr.select { |number| number % 2 != 0 }

#Tea Leaf multi-line version

new_array = arr.select do |number|
  number % 2 != 0
end

# Tea Leaf alternative one line
odd_array = arr.select {|n| n.odd? ? true : false }

#4
array.push(11) #Append, can also use arr << 11

array.unshift(0) #Prepend

puts array

#5

array.pop
array << 3

puts array

#6

array.uniq! # modifies the calling object

array.uniq # does not modify the calling object

puts array

#7

# An Array is different from a Hash because hashes have key value pairs, and arrays are a list of items. Arrays maintain order, but hashes do not.

# Tea Leaf Answer
# The major difference between an array and a hash is that a hash contains a key value pair for referencing by key.


#8 
old_hash = {:name=> "david"} #old syntax
new_hash = {name: "david"} #new syntax

#9
h = {a:1, b:2, c:3, d:4}

h[:b] # get key value of b

h[:e] = 5 # add {e:5} to hash

 # one line version * CHECK THIS OVER *
h.delete_if { |k, v| v < 3.5 }

# multi-line version
h.delete_if do |k, v|
  v < 3.5
end

#10
# Yes, hash values can be arrays, and you can have an array of hashes

# hash values as arrays
hash = {names: ['bob', 'joe', 'susan']}

# array of hashes
arr = [{name: 'bob'}, {name: 'joe'}, {name: 'susan'}]

#11

# Looked at APIs and chose one that is cool:

# The mathn API is cool because it allows for you to do mathetmatical functions since they are there as methods. There are square root, exponents, and different mathematical functionalities that can be used within Ruby with this API.

#12
contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

#13
# Joe's Email
puts "Joe's email is: #{contacts["Joe Smith"][:email]}"

# Sally's Phone Number
puts "Sally's phone number is: #{contacts["Sally Johnson"][:phone]}"

#14

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
items = [:email, :address, :phone]

contacts.each do |name, hash|
  items.each do |items|
    hash[items] = contact_data.shift
  end
end

#14 Bonus Solution

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"], ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

contacts.each_with_index do |(name, hash), idx|
  fields.each do |field|
    hash[field] = contact_data[idx].shift #shift is opposite of pop, removes first itm
  end
end

#15

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

# Rid words that start with "s"
arr.delete_if { |word| word.start_with?("s") }

# Rid words that start with "w"
arr.delete_if { |word| word.start_with?("s", "w") }

#16

a = ['white snow', 'winter wonderland', 'melting ice', 'slippery sidewalk', 'salted roads', 'white trees']
a = a.map! { |pairs| pairs.split } # use bang(!) to modify original array
a = a.flatten!
p a

#17

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

# Outputs are identical for both programs.



