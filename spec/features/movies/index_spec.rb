require 'rails_helper'

RSpec.describe 'Movies Discover Page' do
  it 'has a button to see top rated movies' do
    visit discovermovies_path

    expect(page).to have_button("Top 40 Rated Movies")
  end

  it 'can take me to the top 40 movies page' do
    visit discovermovies_path

    click_button("Top 40 Rated Movies")

    expect(current_path).to eq(top40movies_path)
  end

  it 'has a form to search for movies' do
    visit discovermovies_path

    expect(page).to have_content("Search For Movie")
  end
end

# As an authenticated user,
# When I visit the '/discover' path
# I should see
#
#  Button to Discover top 40 movies
# Details When the user clicks on the
# top 40 button they should be taken to the movies page.
#
#  A text field to enter keyword(s) to search by movie title
#  A Button to Search by Movie Title
# Details When the user clicks on the Search button
# they should be taken to the movies page
#
# The movies will be retrieved by consuming The MovieDB API
