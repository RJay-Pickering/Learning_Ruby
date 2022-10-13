puts "The Name is Doug Dimmadome, "
puts "And welcome to... GUESS.. MY.. NUMBER!!!"
puts "The game where I generate a random number between 1-100 and you try to guess it! Let's play!"

rolls = rand(1..100)

while true
    puts "Your Guess?"
    doug = gets.chomp.to_i
    if doug != rolls
        if doug >= rolls
            puts "Too High"
        else
            puts "Too Low"
        end
    else
        puts "DING DING DING! You guessed right!"
        break
    end
end