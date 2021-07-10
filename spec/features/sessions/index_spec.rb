# When a user visits the root path they should be on the welcome page which includes:
require 'rails_helper'

RSpec.describe "Sessions Index Page" do
  it "has a welcome message" do
    visit root_path

    expect(page).to have_content("Thanks for visiting Viewing Party")
  end

  it "has a brief description of the application" do
    visit root_path

    expect(page).to have_content("Ya you view movies n stuff")
  end

  it "has a BUTTon to log in" do
    visit root_path

    expect(page).to have_button("Log In Here")

    click_button("Log In Here")

    expect(current_path).to eq(login_path)
  end

  it "has a link to registration" do
    visit root_path

    expect(page).to have_link("Register Here", href: register_path)
  end
end
