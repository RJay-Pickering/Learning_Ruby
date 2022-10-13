class Counter
    attr_accessor :count

    def inc(counter)
        counter.count += 1
    end

    def dec(counter)
        if counter.count == 0
            counter.count = 0
        else
            counter.count -= 1
        end
    end
end


counter = Counter.new()
counter.count = 0
while true
    puts "Count:", counter.count
    puts "Do you want to [inc]rease, [dec]rease, or [quit]?"
    answer = gets.chomp.downcase
    if answer == "inc"
        counter.inc(counter)
    elsif answer == "dec"
        counter.dec(counter)
    elsif answer == "quit"
        break
    else
        puts "Invalid action."
    end
end