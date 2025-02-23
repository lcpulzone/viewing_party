require 'rails_helper'

RSpec.describe "Movies Search Result Page" do
  it 'can return results and show me the results when I search for a movie' do
    visit discovermovies_path

    fill_in :search, with: "caddyshack"
    click_button 'Search'

    expect(current_path).to eq(search_path)

    expect(page).to have_content("Caddyshack")
    expect(page).to have_content(6.7)
  end

  it 'has a link as its name' do
    visit discovermovies_path

    fill_in :search, with: "caddyshack"
    click_button 'Search'

    expect(current_path).to eq(search_path)

    expect(page).to have_link("Caddyshack", href: "/moviedetails?id=11977")
  end

  it 'has a form to search for more movies' do
    visit search_path

    expect(page).to have_content("Search for movies")
    expect(page).to have_button("Search")
  end

  it 'has a button to see the top 40 rated movies' do
    visit search_path

    expect(page).to have_button("Top 40 Rated Movies")

    click_button 'Top 40 Rated Movies'

    expect(current_path).to eq(top40movies_path)
  end
end
