require 'rails_helper'

RSpec.describe 'Users New Page' do
  it 'can show a form to register a new user and redirect to the dashboard page after submitting registration' do
    visit register_path

    expect(page).to have_content("Please register by inputing the following details")
    expect(page).to have_content("Email")
    expect(page).to have_content("Password")
    expect(page).to have_content("Confirm Password")
    expect(page).to have_button("Register")

    fill_in 'user[email]', with: "bob@bob.com"
    fill_in 'user[password]', with: "bobobobo"
    fill_in 'user[password_confirmation]', with: "bobobobo"
    click_button 'Register'

    expect(current_path).to eq(dashboard_index_path)

    expect(page).to have_content("Welcome bob@bob.com!")
  end
end
