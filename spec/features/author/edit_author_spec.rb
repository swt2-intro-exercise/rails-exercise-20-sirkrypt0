require 'rails_helper'

describe "Edit author page", type: :feature do

  before :each do
    @alan = create(:author)
  end

  it "should render without error" do
    visit edit_author_path(@alan)
  end

  it "should have text inputs for an author's first/last name and homepage" do
    visit edit_author_path(@alan)

    expect(page).to have_field('author[first_name]')
    expect(page).to have_field('author[last_name]')
    expect(page).to have_field('author[homepage]')
  end

  it "should update an author's values" do
    visit edit_author_path(@alan)

    page.fill_in 'author[first_name]', with: 'Harry'
    page.fill_in 'author[last_name]', with: 'Potter'
    page.fill_in 'author[homepage]', with: '934://harry.wizard'
    find('input[type="submit"]').click

    @alan.reload
    expect(@alan.first_name).to eq 'Harry'
    expect(@alan.last_name).to eq 'Potter'
    expect(@alan.homepage).to eq '934://harry.wizard'
  end


end
