class Book

  attr_reader :author,
              :title,
              :publication_year

  def initialize(hash)
    @author = hash[:author_first_name] + " " + hash[:author_last_name]
    @title = hash[:title]
    # don't need to access or get in a method
    publication_date = hash[:publication_date]
    # need to access this and get in a method
    # get range of the string
    @publication_year = publication_date[(publication_date.length-4)..(publication_date.length-1)]
  end


end
