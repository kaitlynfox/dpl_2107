class Book

  attr_reader :author,
              :title,
              :publication_date,
              :publication_year

  def initialize(hash)
    @author = hash[:author_first_name] + " " + hash[:author_last_name]
    @title = hash[:title]
    @publication_date = hash[:publication_date]
    @publication_year = publication_date[(publication_date.length-4)..(publication_date.length-1)]
  end
end
