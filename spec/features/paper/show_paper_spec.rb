require 'rails_helper'

describe "Show paper page", type: :feature do

  it "should render without error" do
    paper = create(:paper)
    visit paper_path(paper)
  end

  it "should show the authors full name" do
    paper = create(:paper)
    visit paper_path(paper)

    expect(page).to have_text(paper.authors[0].name)
  end

end
