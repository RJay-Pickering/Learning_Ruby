class Glass
    attr_accessor :capacity, :current_amount


    def pour_in(my_glass, amount)
        my_glass.current_amount += amount
        if my_glass.current_amount > my_glass.capacity
            my_glass.current_amount = my_glass.capacity
        end
    end


    def pour_out(my_glass, amount)
        my_glass.current_amount -= amount
        if my_glass.current_amount < 0
            my_glass.current_amount = 0
        end
    end
end


puts "Whats the Capacity of the Glass?"
inputs = gets.chomp.to_i
my_glass = Glass.new()
my_glass.capacity = inputs
my_glass.current_amount = 0
while true
    puts "Glass capacity: #{my_glass.capacity}"
    puts "Glass amount: #{my_glass.current_amount}"
    puts ""
    puts "Pour [in], pour [out], or [quit]?"
    action = gets.chomp.downcase
    if action == "in"
        puts "How much?"
        in_action = gets.chomp.to_i
        my_glass.pour_in(my_glass, in_action)
    elsif action == "out"
        puts "How much?"
        in_action = gets.chomp.to_i
        my_glass.pour_out(my_glass, in_action)
    elsif action == "quit"
        break
    end
end