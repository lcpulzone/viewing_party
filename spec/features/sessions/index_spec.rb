# When a user visits the root path they should be on the welcome page which includes:
require 'rails_helper'

RSpec.describe "Sessions Index Page" do
  before :each do
    @user1 = User.create!(email: "ted@pet.com", password: "asdf")
    @user2 = User.create!(email: "hawk@pet.com", password: "qwre")
    @user3 = User.create!(email: "dalia@pet.com", password: "zxcv")
    @user4 = User.create!(email: "henny@pet.com", password: "uiop")
  end

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

    expect(page).to have_content("Email")
    expect(page).to have_content("Password")
    expect(page).to have_button("Login")

    fill_in 'email', with: "#{@user2.email}"
    fill_in 'password', with: "#{@user2.password}"
    click_button("Login")

    expect(current_path).to eq(dashboard_index_path)
  end

  it "has a link to registration" do
    visit root_path

    expect(page).to have_link("Register Here", href: register_path)
  end
end
