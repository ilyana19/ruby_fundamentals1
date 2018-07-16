my_name = "Linda"
puts "Enter your name:"
user_name = gets.chomp

if my_name == user_name
  puts "We have the same name!"
else
  puts "Hi #{user_name}"
end