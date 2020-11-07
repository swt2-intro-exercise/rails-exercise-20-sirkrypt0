require 'rails_helper'

describe "New author page", type: :feature do

  it "should render without error" do
    visit new_author_path
  end

  it "should have text inputs for an author's first/last name and homepage" do
    visit new_author_path

    expect(page).to have_field('author[first_name]')
    expect(page).to have_field('author[last_name]')
    expect(page).to have_field('author[homepage]')
  end

end
