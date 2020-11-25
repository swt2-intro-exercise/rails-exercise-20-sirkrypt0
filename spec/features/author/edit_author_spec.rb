require 'rails_helper'

describe "Edit author page", type: :feature do

  it "should render without error" do
    visit edit_author_path
  end

  it "should have text inputs for an author's first/last name and homepage" do
    visit edit_author_path

    expect(page).to have_field('author[first_name]')
    expect(page).to have_field('author[last_name]')
    expect(page).to have_field('author[homepage]')
  end

  it "should update an author's values" do
    @alan = create(:author)
    visit edit_author_path(@alan)

    page.fill_in 'author[first_name]', with: 'Harry'
    page.fill_in 'author[last_name]', with: 'Potter'
    page.fill_in 'author[homepage]', with: '934://harry.wizard'
    find('input[type="submit"]').click

    @alan.reload
    expect(@alan.first_name).to equal('Harry')
    expect(@alan.last_name).to equal('Potter')
    expect(@alan.homepage).to equal('934://harry.wizard')
  end


end
