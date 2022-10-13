puts "How many miles away is your workplace?"
miles = gets.chomp.to_i
puts "What's the current weather for today?"
weather = gets.chomp

if miles <= 3 and weather == "sunny"
  puts "You can walk to work!"
else
  puts "You should drive to work."
end