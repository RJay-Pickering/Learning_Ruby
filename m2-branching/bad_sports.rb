puts "Whats your name?"
name = gets.chomp

if name == "Nick" or name == "Carol" or name == "Maureen"

    puts "Did you win?"
    win = gets.chomp

    if win == "Yes"
        if name == "Nick"
            puts "Rick: *shakes hand*"
        else
            puts "Rick: ..."
        end
    else
        if name == "Nick"
            puts "Rick: ..."
        else
            puts "Rick: *shakes hand*"
        end
    end

    if win == "Yes"
        if name == "Nick"
            puts "John: ..."
        else
            puts "John: *shakes hand*"
        end
    else
        if name == "Nick"
            puts "John: *shakes hand*"
        else
            puts "John: ..."
        end
    end

    if win == "Yes"
        if name == "Nick"
            puts "Jared: ..."
        else
            puts "Jared: *shakes hand*"
        end
    else
        if name == "Nick"
            puts "Jared: ..."
        else
            puts "Jared: *shakes hand*"
        end
    end
else
    puts "You weren't even on the team!"
end