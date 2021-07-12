require 'rails_helper'

RSpec.describe 'Movies Discover Page' do
  it 'has a button to see top rated movies' do
    visit discovermovies_path

    expect(page).to have_button("Top Rated Movies")
  end
end
