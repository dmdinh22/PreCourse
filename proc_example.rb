#example 1
talk = Proc.new do 
  puts "I am talking."
end

talk.call

#example 2
talk = Proc.new do |name|
  puts "I am talking to #{name}"
end

talk.call "Bob"
