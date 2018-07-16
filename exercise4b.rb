puts "What's your age?"
user_age = gets.chomp.to_i
my_age = 16
puts diff = user_age - my_age

if user_age > 105
  puts "Wow you're #{user_age}! That's fake isn't it (￢‿￢)"
else
  puts "I'm currently #{my_age}, so we're #{diff} years apart. (￢‿￢)"
end