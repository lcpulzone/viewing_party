require 'rails_helper'

RSpec.describe 'New Register Page' do
  it 'can show a form to register a new user' do
    visit register_path

    expect(page).to have_content("Please register by inputing the following details")
    expect(page).to have_content("Email")
    expect(page).to have_content("Password")
    expect(page).to have_content("Confirm Password")
    expect(page).to have_button("Register")
  end
end
