##############
# OBJECTIVE
##############
# It asks for user input and based on the energy variable, certain actions may be limited. EG: walk and running requires energy. They can't move (update the distance value) unless there's energy. The program will not end until user wants to "go home".

distance = 0 #current distance
energy = 5
options = ["Walk", "Run", "Rest", "Eat", "Go Home"]

while (true) #loop won't stop unless they go home
  puts "============================"
  puts "Pick an action:"
  # puts "\nWalk\nRun\nRest\nEat\nGo Home"
  puts options
  puts "============================"
  action = gets.chomp.split(/ |\_|\-/).map(&:capitalize).join(" ") #automatically do title case
  puts "~~~~~~~~~~~"

  if (!options.include? action) #if it's not an option, repeat input
    puts "Invalid Input".upcase
    puts "~~~~~~~~~~~"
  else
    if (action == options[0] && energy != 0) #Walk
      distance += 1
      energy -=1 #walk requires energy too...
    elsif (action == options[1] && energy != 0) #run
      distance += 5
      energy -= 5
    elsif (action == options[2]) #rest
      puts "You found a nice resting spot".upcase
      energy += 20
    elsif (action == options[3]) #eat
      puts "You stopped to eat a snack".upcase
      energy += 10
    elsif (action == options[4]) #go Home
      puts "You're going home!"
      break #exit the loop & program
    elsif (energy <= 0) #can't move if you don't have energy fallback
      puts "Not enough energy".upcase
    end
  end

  #update current status
  puts "Current energy: #{energy}"
  puts "Distance from home is #{distance}km."
end

#############
# BACKUP
#############
# while (true) #loop won't stop unless they go home
#   puts "============================"
#   puts "Pick an action:"
#   puts "\nWalk\nRun\nRest\nEat\nGo Home"
#   puts "============================"
#   action = gets.chomp.downcase #removing case sensitivity
#   puts "~~~~~~~~~~~"
#
#   #trying out switch statements
#   case action
#   when "walk"
#     distance += 1
#     energy += 1
#     puts "Current energy: #{energy}"
#     puts "Distance from home is #{distance}km."
#   when "run"
#     if (energy > 0)
#       distance += 5
#       energy -= 5
#       puts "Current energy: #{energy}"
#       puts "Distance from home is #{distance}km."
#     else
#       puts "Not enough energy to run".upcase
#       puts "\nCurrent energy: #{energy}"
#       puts "Distance from home is #{distance}km."
#     end
#   when "rest"
#     puts "You found a nice resting spot.".upcase
#     energy += 20
#     puts "\nCurrent energy: #{energy}"
#     puts "Distance from home is #{distance}km."
#   when "eat"
#     puts "You stopped to eat a snack".upcase
#     energy += 10
#     puts "\nCurrent energy: #{energy}"
#     puts "Distance from home is #{distance}km."
#   when "go home"
#     puts "You're going home!"
#     break #exit the loop & program
#   else
#     puts "Invalid Input".upcase
#   end
# end