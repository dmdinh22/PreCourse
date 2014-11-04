def has_a_b?(string)
  if string =~ /b/
    puts "We have a match!"
  else
    puts "No match here."
  end
end

has_a_b?("basketball")
has_a_b?("football")
has_a_b?("hockey")
has_a_b?("golf")

# Regular expressions are used rarely, but certain problems are a perfect fit for them. While solving it any other way would require monumental effort, using regex, you can solve it in one line. If you encounter a string pattern matching problem, remember to look into using regex.


# Check if the pattern "ss" appears in the string "Mississippi".
# Print out the 3rd word of each sentence from a list of sentences.
# Find and replace all instances of "Mrs" with "Ms" in a sentence.
# Does a string start with "St"?
# Does a string end with "art"?
# Does a string have non-alphanumeric characters in it?
# Are there any whitespace characters in the string?
# Find and replace all non-alphanumeric characters in a string with "-".