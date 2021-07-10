require 'rails_helper'
#tee hee
RSpec.describe 'New Register Page' do
  it 'can show a form to register a new user' do
    visit register_path

    expect(page).to have_content("Please register by inputing the following details")
    expect(page).to have_content("Email")
    expect(page).to have_content("Password")
    expect(page).to have_content("Confirm Password")
    expect(page).to have_button("Register")
  end

  it 'can redirect to the dashboard page after submitting registration' do
    visit register_path

    fill_in 'email', with: 'bob@bob.com'
    fill_in 'password', with: 'bobbobbob'
    fill_in 'password_confirmation', with: 'bobbobbob'
    click_button 'Register'

    expect(current_path).to eq(dashboard_index_path)

    expect(page).to have_content("Welcome bob@bob.com!")
  end
end
