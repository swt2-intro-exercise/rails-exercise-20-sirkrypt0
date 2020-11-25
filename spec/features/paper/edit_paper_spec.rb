require 'rails_helper'

describe "Edit paper page", type: :feature do

  it "should render without error" do
    paper = create(:paper)
    visit edit_paper_path(paper)
  end

  it "should show all authors full name" do
    paper = create(:paper)
    author2 = Author.new first_name: "Bill", last_name: "Gates", homepage: "https://wikipedia.org/Bill_Gates"
    visit edit_paper_path(paper)

    Author.all.each do |author|
      expect(page).to have_text author.name
    end
  end

end
