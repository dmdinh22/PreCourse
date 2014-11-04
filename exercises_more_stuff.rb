# 1

def has_lab?(string)
  if string =~ /lab/
    puts string
  else
    puts "Does not have lab in word"
  end
end

has_lab?("laboratory")
has_lab?("experiment")
has_lab?("Pans Labryinth")
has_lab?("elaborate")
has_lab?("polar bear")

# If we want to include capitalized letters, use /lab/i

#Tealeaf Solution
def check_in(word)
  if /lab/ =~ word
    puts word
  else
    puts "No match"
  end
end


check_in("laboratory")
check_in("experiment")
check_in("Pans Labyrinth")
check_in("elaborate")
check_in("polar bear")

# 2
def execute(&block)
  block
end

execute { puts "Hello from inside the execute method"}

#Nothing is printed to the screen because the block is never activated with the .call method. The method returns a Proc object.

# 3
# What is exception handling and what problem does it solve?
# Exception handling is a structure used to handle the possibility of an error occurring in a program. It is a way of handling the error by changing the flow of control without exiting the program entirely.


# 4

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method"}

#5

#Why does the following code...

def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }
Give us the following error when we run it?

# block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
# from test.rb:5:in `<main>'

# The method parameter block is missing the ampersand sign & that allows a block to be passed as a parameter.



