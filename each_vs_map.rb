# each method example 1

a = [1, 2, 3]
a.each { |e| puts e }

# Outputs
# 1
# 2
# 3
# => [1, 2, 3]

# each method example 2

a = [1, 2, 3]
a.each { |e| puts e + 2 }

# Outputs
# 3
# 4
# 5
# => [1, 2, 3]

# each method with no block, returns Enumerator
a = [1, 2, 3]
a.each
# => #<Enumerator: ...>

# map example 1

a = [1, 2, 3]
a.map { |x| x**2 }
# => [1, 4, 9]

# map example 2

a = [1, 2, 3]
a.map { |x| puts x**2 }
# => [nil, nil, nil]

# map method with no block, returns Enumerator
a = [1, 2, 3]
a.map 
#<Enumerator: ...>

# use map for transformation and each for iteration