def input_students()
    puts "Please provide the students names and then q to quit"
    students = {}
    while true
        actions = gets.chomp
        if actions == "q"
            return students
        else
            students[actions] = false
        end
    end
end


def input_action()
    puts "[check] sign ins, [sign] in, or [q]uit:"
    action = gets.chomp
    return action
end


def print_checkins(students)
    students.each do |key, value|
        if value
            here = "Y"
        else
            here = "N"
        end
        puts "#{key}: #{here}"
    end
end


def sign_in(students)
    puts "Who is signed in?"
    action = gets.chomp
    if students[action]
        students[action] = false
    else
        students[action] = true
    end
end


students = input_students()
if students.empty?()
    puts "No students were provided"
else
    while true
        action = input_action()
        if action == "check"
            print_checkins(students)
        elsif action == "sign"
            sign_in(students)
        elsif action == "q"
            break
        else
            puts "Please choose a valid action."
        end
    end
end