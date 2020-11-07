require 'rails_helper'

describe "Author model", type: :model do

  it "should have a first_name attribute" do
    author = Author.new('Alan', 'Turing', 'http://wikipedia.org/Alan_Turing')
    expect(author.first_name).to eq('Alan')
  end

  it "should have a last_name attribute" do
    author = Author.new('Alan', 'Turing', 'http://wikipedia.org/Alan_Turing')
    expect(author.last_name).to eq('Turing')
  end

  it "should have a homepage attribute" do
    author = Author.new('Alan', 'Turing', 'http://wikipedia.org/Alan_Turing')
    expect(author.homepage).to eq('http://wikipedia.org/Alan_Turing')
  end

  it "should have a method name which returns the full name of an author" do
    author = Author.new('Alan', 'Turing', 'http://wikipedia.org/Alan_Turing')
    expect(author.name).to eq('Alan Turing')
  end

end
