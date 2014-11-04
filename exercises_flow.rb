#1.
p (32 * 4) >= 129
p false != !true
p true == 4
p false == (847 == '874')
p (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false

#2. 
def capslock(word)
	if word.length > 10
		puts word.upcase
	else
		puts word
	end
end

puts capslock("hi there")
puts capslock("this is sparta")

#3.
puts "Enter a number between 0 and 100."

a = gets.chomp.to_i

if a < 0
	puts "The number is negative!"
elsif a >= 0 && a <= 50
	puts "#{a} is between 0 and 50"
elsif a >= 50 && a <= 100
	puts "#{a} is between 50 and 100"
else 
	puts "#{a} is greater than 100"
end

#4.

# FALSE
# Did you get it right?
# Alright now!

'4' == 4 ? puts("TRUE") : puts("FALSE")

x = 2
	if ((x * 3) / 2) == (4 + 4 - x - 3)
  	puts "Did you get it right?"
	else
  	puts "Did you?"
	end

y = 9
x = 10
	if (x + 1) <= (y)
  	puts "Alright."
	elsif (x + 1) >= (y)
  	puts "Alright now!"
	elsif (y + 1) == x
		puts "ALRIGHT NOW!"
	else
		puts "Alrighty!"
	end

#5.

puts "Enter a number between 0 and 100."

a = gets.chomp.to_i

answer = case
when a < 0
	"The number is negative!"
when a <= 50
	"#{a} is between 0 and 50"
when a <= 100
	"#{a} is between 50 and 100"
else 
	"#{a} is greater than 100"
end

puts answer
