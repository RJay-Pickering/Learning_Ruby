def input_action()
    puts "View [books], show [author], or [quit]?"
    action = gets.chomp.downcase
    return action
end


def print_books(book_authors)
    book_authors.each do |key, value|
        puts "- #{key}"
    end
end


def input_book(book_authors)
    while true
        puts "What book?"
        action = gets.chomp
        if book_authors[action]
            return book_authors[action]
        else
            puts "Please provide a valid book."
        end
    end
end


def print_author(book_authors)
    puts input_book(book_authors)
end

book_authors = {
    "Harry Potter" => "JK Rowling",
    "Effective Testing with RSpec 3" => "Myron Marston",
    "Automate the Boring Stuff" => "Al Sweigart",
    "Quiet" => "Susan Cain",
    "Peak" => "Anders Ericsson"
}

while true
    action = input_action()
    if action == "books"
        print_books(book_authors)
    elsif action == "author"
        print_author(book_authors)
    elsif action == "quit"
        break
    else
        puts "Please provide a valid action."
    end
end