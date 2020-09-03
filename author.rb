class Author

  attr_reader :name

  @@all = []

  def initialize(name)
      @name = name
      @@all << self
  end

  def self.all
      @@all
  end

  def books
      Book.all.find_all do |inst_book|
          # binding.pry
          inst_book.author == self.name
      end
  end

  def write_book(title, word_count)
      Book.new(title, self, word_count)
  end

  def total_word
      total = 0
      Book.all.find_all do |inst_book|
          if inst_book.author == self.name 
              total += inst_book.word_count
          end
      end
      total
  end

  def self.most_words
      @@all.max do |author_challenger, author_champion|
          author_challenger.total_word <=> author_champion.total_word #compares the two and return the most
          #will automatically return 
          #a tie will always go to the champion
      end
  end

end