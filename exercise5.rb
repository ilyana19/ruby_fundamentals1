# setting a limit to the loop
max_distance = 20
distance = 0 #current distance

until distance == max_distance
  puts "Would you like to walk or run?"
  action = gets.chomp

  #trying out switch statements
  case action
  when "walk"
    distance += 1
    puts "Distance from home is #{distance}km."
  when "run"
    distance += 5
    puts "Distance from home is #{distance}km."
  end
end

puts "You've reached your destination!"