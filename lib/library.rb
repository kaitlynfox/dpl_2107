class Library

  attr_reader :name,
              :books,
              :authors

  def initialize(name)
    @name = name
    @books = []
    @authors = []
  end

  def add_author(author)
    # Add author to the list of authors
    @authors << author

    # Add all of the books the author wrote to the list of books
    author.books.each do |book|
      @books << book
    end
  end

  def publication_time_frame_for(author)
    array =  []
    hash = {}

    # iterate through publication years and compare
    # minimum is the start; maximum is the end
    author.books.each do |book|
      # turn string into an integar
      # put integer into array
      # first element is start
      # last element is end
      array << book.publication_year.to_i
    end

    # sort array values least to greatest
    sorted_array = array.sort

    # set up the hash with keys and values
    hash[:start] = sorted_array.first.to_s
    hash[:end] = sorted_array.last.to_s

    # return the hash
    hash
  end

  def checkout(book)
    # if @books == nil (nothing in library)
    # then return false
    false if @books == []

    # If @books != nil,
    # Check if book is in the library
    # @books.each do |book|
    #   require 'pry'; binding.pry
    #
    # end
  end
end
