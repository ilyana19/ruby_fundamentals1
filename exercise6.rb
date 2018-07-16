distance = 0 #current distance

while (true) #loop won't stop unless they go home
  puts "============================"
  puts "Pick an action:"
  puts "\nWalk\nRun\nGo Home"
  puts "============================"
  action = gets.chomp.downcase #removing case sensitivity
  puts "~~~~~~~~~~~"

  #trying out switch statements
  case action
  when "walk"
    distance += 1
    puts "Distance from home is #{distance}km."
  when "run"
    distance += 5
    puts "Distance from home is #{distance}km."
  when "go home"
    puts "You're going home!"
    break #exit the loop & program
  else
    puts "Invalid Input"
  end
end