require 'rails_helper'

describe "Author", type: :model do

  it "should have a first_name attribute" do
    author = create(:author) # use factory to create author
    expect(author.first_name).to eq('Alan')
  end

  it "should have a last_name attribute" do
    author = create(:author)
    expect(author.last_name).to eq('Turing')
  end

  it "should have a homepage attribute" do
    author = create(:author)
    expect(author.homepage).to eq('http://wikipedia.org/Alan_Turing')
  end

  it "should have a method name which returns the full name of an author" do
    author = create(:author)
    expect(author.name).to eq('Alan Turing')
  end

  it "should fail the validation when creating an author without last name" do
    author = Author.new first_name: 'Alan', homepage: 'http://wikipedia.org/Alan_Turing'
    expect(author).to_not be_valid
  end

end
