puts "The door is locked!"
secrets = gets.chomp.downcase
while secrets != "open sesame"
    puts "The door is locked!"
    secrets = gets.chomp.downcase
end
puts "The door is unlocked!"