secret_num = 20

puts "Enter a number"
num = gets.chomp.to_i

until num == secret_num
  if ((num - secret_num).abs) == 1
    puts "So close!"

    puts "Enter a number"
    num = gets.chomp.to_i
  else
    puts "Try again"

    puts "Enter a number"
    num = gets.chomp.to_i
  end
end

puts "You win!"