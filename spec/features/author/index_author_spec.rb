require 'rails_helper'

describe "Index author page", type: :feature do

  before :all do
    create(:author)
    @author1 = Author.new first_name: 'Bill', last_name: 'Gates', homepage: 'http://wikipedia.org/Bill_Gates'
  end

  it "should render without error" do
    visit authors_path
  end

  it "should display a table containing authors name" do
    visit authors_path
    Author.all.each do |author|
      expect(page).to have_text author.name
    end
  end

  it "should display a table containing authors homepage" do
    visit authors_path
    Author.all.each do |author|
      expect(page).to have_text author.homepage
    end
  end

  it "should contain a link to add new authors" do
    visit authors_path
    expect(page).to have_link 'New', href: new_author_path
  end

  it "should display a table containing a link to edit an author" do
    visit authors_path
    Author.all.each do |author|
      expect(page).to have_link("Edit", href: edit_author_path(author))
    end
  end

end
