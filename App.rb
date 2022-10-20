# P R I N T I N G
# "print" does not do a new line afterwards but "puts" does!
puts "Hello"
print "World"
puts "!"


# V A R I A B L E S
=begin
    Names are case-sensitive and may begin with:
        Letters, _
    After, may include
        Letters, numbers, _
    Convention says
        Start with a lowercase word, then additional words are separated by an underscore
        ex. my_first_variable
=end
name = "Mike"      # Strings
age = 30           # Integer
gpa = 3.5          # Decimal
is_tall = true     # Boolean -> true/false

name = "John"

puts "Your name is #{name}"
puts "Your name is " + name


# C A S T I N G     &     C O N V E R T I N G

# to integer
puts 3.14.to_i
# to float
puts 3.to_f
# to string
puts "3.0".to_s

# examples
puts 100 + "50".to_i
puts 100 + "50.99".to_f


# S T R I N G S

greeting = "Hello"
# indexes:  01234

puts greeting.length
puts greeting[0]
puts greeting.include? "llo"
puts greeting.include? "z"
puts greeting[1,3]


# N U M B E R S

puts 2 * 3         # Basic Arithmetic: +, -, /, *
puts 2**3          # Exponent
puts 10 % 3        # Modulus Op. : returns remainder of 10/3
puts 1 + 2 * 3     # order of operations
puts 10 / 3.0      # int's and doubles

num = 10
num += 100         # +=, -=, /=, *=
puts num

num = -36.8
puts num.abs()
puts num.round()

# Math class has useful math methods
puts Math.sqrt(144)
puts Math.log(0)


# U S E R     I N P U T

puts "Enter your name: "
name = gets
puts "Hello #{name}, how are you"

puts "Enter your name again: "
name = gets.chomp
puts "Hello #{name}, how are you"

# "gets" prints the name and adds a new line while "gets.chomp" prints it without adding it to a new line

puts "Enter first num: "
num1 = gets.chomp
puts "Enter second num: "
num2 = gets.chomp
puts num1.to_f + num2.to_f


# A R R A Y S

lucky_numbers = [4, 8, "fifteen", 16, 23, 42.0]
#       indexes  0  1      2       3   4    5

lucky_numbers[0] = 90
puts lucky_numbers[0]
puts lucky_numbers[1]
puts lucky_numbers[-1]

puts "\n\n"
puts lucky_numbers[2,3]
puts "\n\n"
puts lucky_numbers[2..4]
puts "\n\n"

puts lucky_numbers.length

# N Dimensional Arrays

number_grid = [ [1, 2], [3, 4] ]
number_grid[0][0] = 99
puts number_grid[0][0]
puts number_grid[0][1]


# A R R A Y   M E T H O D S

friends = []
friends.push("Oscar")
friends.push("Angela")
friends.push("Kevin")

# "friends.pop" removes the last item in the list
friends.pop[1]

puts friends
puts "\n"

puts friends.reverse
puts "\n"

puts friends.sort
puts "\n"

puts friends.include? "Oscar"


# M E T H O D S

# if a argument might not be used you can have it equal a value to make the place for it just in case!
def add_numbers(num1, num2=99)
    return num1 + num2
end

sum = add_numbers(4, 3)
single_sum = add_numbers(4)
puts sum
puts single_sum


# I F   S T A T E M E N T S
is_student = false
is_smart = false

if is_student and is_smart
    puts "You are a student"
elsif is_student and !is_smart
    puts "You are not a smart student"
else
    puts "You are not a student and not smart"   
end

# >, <, >=, <=, !=, ==, String.equals()
if 1 > 3
    puts "number comparison was true"
end

if "a" > "b"
    puts "string comparison was true"
end


# S W I T C H    S T A T E M E N T S

my_grade = "A"
case my_grade
    when "A"
        puts "You Pass"
    when "F"
        puts "You Fail"
    else
        puts "Invalid grade"
end

# D I C T I O N A R I E S

test_grades = {
    "Andy" => "B+",
    # : could be another way to define a key instead of "" or numbers
    :Stanley => "C",
    "Ryan" => "A",
    3 => 95.2
}

test_grades["Andy"] = "B-"
puts test_grades["Andy"]
puts test_grades[:Stanley]
puts test_grades[3]


# W H I L E    L O O P S

index = 1
while index <= 5
    puts index
    index += 1
end


# F O R    L O O P S

for index in 0..5
    puts index
end

5.times do |index|
    puts index
end

lucky_nums = [4, 8, 15, 16, 23, 42]
for lucky_num in lucky_nums
    puts lucky_num
end

lucky_nums.each do |lucky_num|
    puts lucky_num
end


# E X C E P T I O N    C A T C H I N G

# num = 10/0

begin
    num = 10/0
rescue
    puts "Error"
end

begin
    puts bad_variable
    # num = 10/0
rescue ZeroDivisionError
    puts "Error"
rescue
    puts "All other errors"
end

# raise "Made Up Exception"


# C L A S S E S    &    O B J E C T S

class Book
    #this defines the attributes of the class
    attr_accessor :title, :author

    def readBook()
        puts "Reading #{self.title} by #{self.author}"
    end
end

# this makes a new class object
book1 = Book.new()
book1.title = "Harry Potter"
book1.author = "JK Rowling"

book1.readBook()
puts book1.title
puts book1.author


# C O N S T R U C T O R S

class Book
    attr_accessor :title, :author
    def initialize(title, author)
        @title = title
        @author = author
    end

    def readBook()
        puts "Reading #{self.title} by #{self.author}"
    end
end

book2 = Book.new("Harry Potter", "JK Rowling")
# book2.title = "Half-Blood Prince"

puts book2.title
puts book2.author


# G E T T E R S    &    S E T T E R S

class Book
    attr_accessor :title, :author
    def initialize(title, author)
        self.title = title
        @author = author
    end

    def title=(title)
        puts "Set"
        @title = title
    end

    def title
        puts "Get"
        return @title
    end
end

book3 = Book.new("Harry Potter", "JK Rowling")

puts book3.title


# I N H E R I T A N C E    P T . 1

class Chef
    def make_chicken()
        puts "The chef makes chicken"
    end

    def make_salad()
        puts "The chef makes salad"
    end

    def make_special_dish()
        puts "The chef makes a special dish"
    end
end

# The less than sign is meaning that the ItalianChef is going to inherit from the Chef class
class ItalianChef < Chef
    def make_pasta()
        puts "The chef makes pasta"
    end

    def make_special_dish()
        puts "the chef makes chicken parm"
    end
end

my_chef = Chef.new()
my_chef.make_chicken()
my_chef.make_special_dish()

my_italian_chef = ItalianChef.new()
my_italian_chef.make_chicken()
my_italian_chef.make_special_dish()


# I N H E R I T A N C E    P T . 2

class Chef

    attr_accessor :name, :age
    def initialize(name, age)
        @name = name
        @age = age
    end

    def make_chicken()
        puts "The chef makes chicken"
    end

    def make_salad()
        puts "The chef makes salad"
    end

    def make_special_dish()
        puts "The chef makes a special dish"
    end
end

class ItalianChef < Chef

    attr_accessor :country_of_origin
    def initialize(name, age, country_of_origin)
        @country_of_origin = country_of_origin
        super(name, age)
    end
    
    def make_pasta()
        puts "The chef makes pasta"
    end

    def make_special_dish()
        puts "the chef makes chicken parm"
    end
end

my_chef = Chef.new("Gordan Ramsay", 50)
my_chef.make_chicken()

my_italian_chef = ItalianChef.new("Massimo Bottura", 55, "Italy")
my_italian_chef.make_chicken()
puts my_italian_chef.age;


# R A N D O M

# When the method is called with no arguments, it returns a float that is greater than or equal to 0.0 and less than 1.0.
random_num = rand()
puts random_num

# The function will return a random integer value that is greater than or equal to 0 and less than the integer passed to the function. Each time the following is run, you will get a number that is between 0 and 7.
random_num = rand(8)
puts random_num

# The following uses an inclusive Range to generate random numbers from a lower limit (1), up to (and including) the upper limit (10).
random_num = rand(1..10)
puts random_num

#The next example uses a non-inclusive Range to generate random numbers from a lower limit, up to (but not including) the upper limit.
random_num = rand(1...10)
puts random_num


# C A P I T A L I Z E    &    L O W E R C A S E

capital = "greeks"
lower = "Hey"

puts capital.capitalize()
puts lower.downcase


# G E T T I N G   D A T E   OR   TIME

# This basically imports the date time function
require 'date'

d = DateTime.now

this_month_varible = d.strftime("%d/%m/%Y %H:%M")
#=> "Day/Month/Year Hour:Minute"

puts this_month_varible

next_month_varible = d.next_month.strftime("%d/%m/%Y %H:%M")
#=> "Day/Next_Month/Year Hour:Minute"

puts next_month_varible


# D E L E T I N G   C E R T A I N   S T R I N G S

"((String1))".tr('()', '')
# => "String1"

example = "I-Am-A-Apple!"
example_result = example.tr('-', ' ')
puts example_result

example2 = "Auto+matic"
example2_result = example2.tr('+', '')
puts example2_result