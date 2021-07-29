require './lib/library'
require './lib/author'

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
end
