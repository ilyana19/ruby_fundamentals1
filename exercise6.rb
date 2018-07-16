distance = 0 #current distance
energy = 5

while (true) #loop won't stop unless they go home
  puts "============================"
  puts "Pick an action:"
  puts "\nWalk\nRun\nRest\nEat\nGo Home"
  puts "============================"
  action = gets.chomp.downcase #removing case sensitivity
  puts "~~~~~~~~~~~"

  #trying out switch statements
  case action
  when "walk"
    distance += 1
    energy += 1
    puts "Current energy: #{energy}"
    puts "Distance from home is #{distance}km."
  when "run"
    if (energy > 0)
      distance += 5
      energy -= 5
      puts "Current energy: #{energy}"
      puts "Distance from home is #{distance}km."
    else
      puts "Not enough energy to run".upcase
      puts "\nCurrent energy: #{energy}"
      puts "Distance from home is #{distance}km."
    end
  when "rest"
    puts "You found a nice resting spot.".upcase
    energy += 20
    puts "\nCurrent energy: #{energy}"
    puts "Distance from home is #{distance}km."
  when "eat"
    puts "You stopped to eat a snack".upcase
    energy += 10
    puts "\nCurrent energy: #{energy}"
    puts "Distance from home is #{distance}km."
  when "go home"
    puts "You're going home!"
    break #exit the loop & program
  else
    puts "Invalid Input".upcase
  end
end