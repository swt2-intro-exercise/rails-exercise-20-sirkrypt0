require 'rails_helper'

describe "Show author page", type: :feature do

  it "should render without error" do
    author = create(:author)
    visit author_path(author)
  end

  it "should render the authors first_name" do
    author = create(:author)
    visit author_path(author)
    expect(page).to have_text(author.first_name)
  end

  it "should render the authors last_name" do
    author = create(:author)
    visit author_path(author)
    expect(page).to have_text(author.last_name)
  end

  it "should render the authors homepage" do
    author = create(:author)
    visit author_path(author)
    expect(page).to have_text(author.homepage)
  end

end
