require 'rails_helper'

RSpec.describe 'Dashboard Index page' do
  it 'can welcome the user' do
    visit dashboard_index_path

    expect(page).to have_content("Welcome!")  ###ADD IN INTERPOOOLATION
  end
end
