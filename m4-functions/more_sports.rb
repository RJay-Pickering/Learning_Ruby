def is_on_team(name)
    if name == "Nick" or name == "Carol" or name == "Maureen"
        return true
    else
        return false
    end
end


def rick_shakes(name, did_win)
    if did_win and name == "Nick" 
        return true
    elsif !did_win and name != "Nick"
        return true
    else
        return false
    end
end


def john_shakes(name, did_win)
    if did_win and name != "Nick"
        return true
    elsif !did_win and name == "Nick"
        return true
    else
        return false
    end
end


def jared_shakes(name, did_win)
    if name != "Nick"
        return true
    else
        return false
    end
end

def main()
    puts "Whats your name?"
    name = gets.chomp.capitalize()

    if is_on_team(name)
        puts "Did you win?"
        answer = gets.chomp.capitalize()

        if answer == "Yes"
            did_win = true
        else
            did_win = false        
        end

        if rick_shakes(name, did_win)
            puts "Rick: *shakes hand*"
        else
            puts "Rick: ..."
        end

        if john_shakes(name, did_win)
            puts "John: *shakes hand*"
        else
            puts "John: ..."
        end

        if jared_shakes(name, did_win)
            puts "Jared: *shakes hand*"
        else
            puts "Jared: ..."
        end

    else
        puts "You weren't even on the team!"
    end
end

main()