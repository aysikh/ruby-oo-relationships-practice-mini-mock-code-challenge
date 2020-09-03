require 'pry'
require_relative './book'
require_relative './author'

fish = Book.new("One Fish Two Fish", "Dr.Seuess", 55)
greeneggs = Book.new("Green Eggs & Ham", "Dr.Seuess", 50)
horton = Book.new("Horton Hears A Who", "Dr.Seuess", 60)
becoming = Book.new("The Becoming", "Michelle Obama", 400)
soul = Book.new("Untethered Soul", "Michael Singer", 350)
book_1984 = Book.new("1984", "George Orwell", 220)
catcher = Book.new("Catcher in the Rye", "JD Salinger", 180)

drseuess = Author.new("Dr.Seuess")
singer = Author.new("Michael Singer")
obama = Author.new("Michelle Obama")
orwell = Author.new("George Orwell")
jd = Author.new("JD Salinger")

# puts "Does the book know its title?"
# puts greeneggs.title == "Green Eggs & Ham"
# puts soul.title == "Untethered Soul"

# puts "Does the book know its author?"
# puts greeneggs.author == "Dr.Seuss"
# puts book_1984.author == "George Orwell"

# puts "Does the book know its word count?"
# puts greeneggs.word_count == 50
# puts book_1984.word_count == 220
# puts soul.word_count == 350

# puts "Does the author know its name?"
# puts obama.name == "Michelle Obama"

# puts "Does author know all its authors?"
# y = Author.all
# print y 

# puts "Does the book know all of its books?"
# x = Book.all
# print x 

# puts "Does the author know its books?"
# # print obama.books
# print drseuess.books
# binding.pry

# puts "Did this author write a book?" 
# book = jd.write_book("Blah", 30)
# print book

puts "Does this author know how many words they wrote?"
print drseuess.total_word
# print singer.total_word

puts "Which author wrote the most amount of words?"
word = Author.most_words
print word


