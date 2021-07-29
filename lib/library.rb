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
end
