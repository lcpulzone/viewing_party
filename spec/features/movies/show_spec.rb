require 'rails_helper'

RSpec.describe "Movies Show Page" do
  it 'can show a list of the current top 40 rated movies' do
    visit top40movies_path

    expect(page).to have_content("Top 40 Movies")
    expect(page).to have_content("The Shawshank Redemption")
  end
end
