require 'rails_helper'

RSpec.describe 'Movie Details Page' do
  it 'can show the details of a movie' do
    visit "/moviedetails?id=11977"

    expect(page).to have_content("The Deets")
  end

  it 'can give the things' do
    visit discovermovies_path

    fill_in :search, with: "caddyshack"
    click_button 'Search'
    click_link 'Caddyshack'

    visit "/moviedetails?id=11977"

    expect(page).to have_content("Caddyshack")
    save_and_open_page
  end
end
