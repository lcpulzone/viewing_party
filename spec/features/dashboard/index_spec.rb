require 'rails_helper'

RSpec.describe 'Dashboard Index page' do
  it 'can welcome the user' do
    visit dashboard_index_path

    expect(page).to have_content("Welcome!")  ###ADD IN INTERPOOOLATION
  end

  it 'has a button to discover movies' do
    visit dashboard_index_path

    expect(page).to have_button("Discover Movies") ###NEED TO ADD TEST FOR ROUTE
  end

  it 'has a section to show and add friends' do
    visit dashboard_index_path

    expect(page).to have_content("Friends")
  end

  it 'has a section for parties' do
    visit dashboard_index_path

    expect(page).to have_content("Action Movie Partiiiiessss")
  end
end
