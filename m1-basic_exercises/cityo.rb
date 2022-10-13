puts "Welcome to Good Burger."
puts "Home of the Good burger."
puts "Can I take your order?"
puts ""
index = 0
while index == 0
    puts "How many Good Burgers ($4.5)?"
    good_burger = gets.chomp
    if good_burger.to_i.to_s == good_burger
        burger = good_burger.to_i
        index += 1
    else
        puts "This is not a number, please input a valid Integer!"
    end
end

while index == 1
    puts "How many French Fries ($1.5)?"
    french_fries = gets.chomp
    if french_fries.to_i.to_s == french_fries
        fries = french_fries.to_i
        index += 1
    else
        puts "This is not a number, please input a valid Integer!"
    end
end

while index == 2
    puts "How many Drinks       ($1.0)?"
    soft_drinks = gets.chomp
    if soft_drinks.to_i.to_s == soft_drinks
        drinks = soft_drinks.to_i
        index += 1
    else
        puts "This is not a number, please input a valid Integer!"
    end
end

total_one = 4.5 * burger
total_two = 1.5 * fries
total_three = 1.0 * drinks
total_four = total_one + total_two + total_three

puts "Here is your receipt:"

puts "- Good Burgers $4.5 x #{burger} = $#{total_one}"
puts "- French Fries $1.5 x #{fries} = $#{total_two}"
puts "- Drinks       $1.0 x #{drinks} = $#{total_three}"
puts "TOTAL = $#{total_four}"