puts "Would you like some pepper?"
pepper = gets.chomp.downcase
salt = 0

while pepper == "yes"
    salt += 1
    puts "More?"
    pepper = gets.chomp.downcase
end

puts "#{salt} shakes of pepper!"

if salt == 0
    puts "You have no pepper on your salad."
elsif salt <= 2
    puts "You have a little pepper on your salad."
else
    puts "You have a lot of pepper on your salad."
end