puts "What is your name?"
name = gets.chomp

index = 0
while index == 0
    puts "What year were you born in?"
    birth_year = gets.chomp
    if birth_year.to_i.to_s == birth_year
        birth = birth_year.to_i
        index += 1
    else
        puts "This is not a number, please input a valid Integer!"
    end
end

puts "#{name}, you will be #{2050 - birth} years old in 2050!"