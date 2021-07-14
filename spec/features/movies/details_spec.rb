require 'rails_helper'

RSpec.describe 'Movie Details Page' do
  it 'can show the details of a movie' do
    visit moviedetails_path

    expect(page).to have_content("The Deets")
  end
end
