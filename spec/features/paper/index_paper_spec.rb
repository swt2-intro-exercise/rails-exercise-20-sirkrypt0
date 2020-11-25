require 'rails_helper'

describe "Index author page", type: :feature do

  before :all do
    @paper1 = create(:paper)
    @paper1.save
    @paper2 = Paper.new title: 'Paper 2', venue: 'HPI', year: 1337
    @paper2.save
  end

  it "should show papers from year only when filtering with year" do
    visit "/papers?year=1337"
    expect(page).to_not have_text @paper1.title
    expect(page).to have_text @paper2.title
  end

end
