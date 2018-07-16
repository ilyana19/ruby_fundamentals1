puts "Enter your name:"
user_name = gets.chomp

if user_name.length > 10
  puts "Hi #{user_name}"
elsif user_name.length < 10
  puts "Hello #{user_name}"
elsif user_name.length == 10
  puts "Hey #{user_name}"
else
  puts "Error"
end