class Author

  attr_reader :first_name,
              :last_name,
              :name,
              :books

  def initialize(hash)
    @first_name = hash[:first_name]
    @last_name = hash[:last_name]
    @name = hash[:first_name] + " " + hash[:last_name]
    @books = []
  end

  def write(title, publication_date)
    # Author writes a new book
    book = Book.new({author_first_name: @first_name, author_last_name: @last_name, title: title, publication_date: publication_date})
    # The book is saved to their list of books written 
    @books << book
    #return a single book object
    book
  end
end
