puts "How old are you?"
age = gets.chomp.to_i

adult = age >= 19

if adult
    puts "Congrats! You're an adult!"
elsif age == 18
    puts "Wow, you are barely an adult."
else
    puts "Maybe later, kid."
end