require './lib/library'
require './lib/author'
require './lib/book'

RSpec.describe Library do
  it "exists" do
    dpl = Library.new("Denver Public Library")

    expect(dpl).to be_a(Library)
  end

  it "has a name" do
    dpl = Library.new("Denver Public Library")

    expect(dpl.name).to eq("Denver Public Library")
  end

  it "has books" do
    dpl = Library.new("Denver Public Library")

    expect(dpl.books).to eq([])
  end

  it "has authors" do
    dpl = Library.new("Denver Public Library")

    expect(dpl.authors).to eq([])
  end

  it "can add authors to a library" do
    # Get a library
    dpl = Library.new("Denver Public Library")

    # Get authors
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    harper_lee = Author.new({first_name: "Harper", last_name: "Lee"})

    # Get books
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    professor = charlotte_bronte.write("The Professor", "1857")
    villette = charlotte_bronte.write("Villette", "1853")
    mockingbird = harper_lee.write("To Kill a Mockingbird", "July 11, 1960")

    # Add authors to the library's list of authors
    dpl.add_author(charlotte_bronte)
    dpl.add_author(harper_lee)

    expect(dpl.authors).to eq([charlotte_bronte, harper_lee])
    expect(dpl.books).to eq([jane_eyre, professor, villette, mockingbird])
  end

  it "can list the start and end publication date for an author" do
    # Get a library
    dpl = Library.new("Denver Public Library")

    # Get authors
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    harper_lee = Author.new({first_name: "Harper", last_name: "Lee"})

    # Get books
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    professor = charlotte_bronte.write("The Professor", "1857")
    villette = charlotte_bronte.write("Villette", "1853")
    mockingbird = harper_lee.write("To Kill a Mockingbird", "July 11, 1960")

    # Add authors to the library's list of authors
    dpl.add_author(charlotte_bronte)
    dpl.add_author(harper_lee)

    # Get the start and end publication date for an author
    expect(dpl.publication_time_frame_for(charlotte_bronte)).to eq({:start=>"1847", :end=>"1857"})
    expect(dpl.publication_time_frame_for(harper_lee)).to eq({:start=>"1960", :end=>"1960"})
  end




  # Iteration 4
  it "can checkout a book" do
    # Get a library
    dpl = Library.new("Denver Public Library")

    # Get authors
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    harper_lee = Author.new({first_name: "Harper", last_name: "Lee"})

    # Get books
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    villette = charlotte_bronte.write("Villette", "1853")
    mockingbird = harper_lee.write("To Kill a Mockingbird", "July 11, 1960")

    # Can't be checkout because it currently doesn't exist in library
    expect(dpl.checkout(mockingbird)).to eq(false)
  end
end
