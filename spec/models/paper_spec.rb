require 'rails_helper'

RSpec.describe Paper, type: :model do

  it "should not be valid without any attribute" do
    paper = Paper.new({})
    expect(paper).to_not be_valid
  end

  it "should not be valid without title" do
    paper = Paper.new venue: 'HPI', year: 2000
    expect(paper).to_not be_valid
  end

  it "should not be valid without venue" do
    paper = Paper.new title: 'Paper', year: 2000
    expect(paper).to_not be_valid
  end

  it "should not be valid without year" do
    paper = Paper.new title: 'Paper', venue: 'HPI'
    expect(paper).to_not be_valid
  end

  it "should not be valid with year being not numeric" do
    paper = Paper.new title: 'Paper', venue: 'HPI', year: 'Hello'
    expect(paper).to_not be_valid
  end

  it "should be valid with all values correct" do
    paper = Paper.new title: 'Paper', venue: 'HPI', year: 2019
    expect(paper).to be_valid
  end

  it "should have an empty list of authors" do
    paper = Paper.new title: 'Paper', venue: 'HPI', year: 2019
    expect(paper.authors).to eq []
  end

end
