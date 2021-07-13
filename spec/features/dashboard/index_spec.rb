require 'rails_helper'

RSpec.describe 'Dashboard Index page' do
  before :each do
    @user1 = User.create!(email: "ted@pet.com", password: "asdf")
    @user2 = User.create!(email: "hawk@pet.com", password: "qwre")
    @user3 = User.create!(email: "dalia@pet.com", password: "zxcv")
    @user4 = User.create!(email: "henny@pet.com", password: "uiop")
  end

  it 'can welcome the user' do
    visit root_path

    fill_in 'email', with: "#{@user2.email}"
    fill_in 'password', with: "#{@user2.password}"
    click_button("Login")

    visit dashboard_index_path

    expect(page).to have_content("Welcome #{@user2.email}!")
  end

  it 'has a button to discover movies' do
    visit root_path

    fill_in 'email', with: "#{@user2.email}"
    fill_in 'password', with: "#{@user2.password}"
    click_button("Login")

    visit dashboard_index_path

    expect(page).to have_button("Discover Movies") ###NEED TO ADD TEST FOR ROUTE
  end

  it 'has a section to show and add friends' do
    visit root_path

    fill_in 'email', with: "#{@user2.email}"
    fill_in 'password', with: "#{@user2.password}"
    click_button("Login")

    visit dashboard_index_path

    expect(page).to have_content("Friends")
    expect(page).to have_content("Search for friends")
    expect(page).to have_button("Find Friend")
  end

  it 'has a section for parties' do
    visit root_path

    fill_in 'email', with: "#{@user2.email}"
    fill_in 'password', with: "#{@user2.password}"
    click_button("Login")

    visit dashboard_index_path

    expect(page).to have_content("Action Movie Partiiiiessss")
  end

  it 'when I click the discover movies button, it can redirect me to the discover page' do
    visit root_path

    fill_in 'email', with: "#{@user2.email}"
    fill_in 'password', with: "#{@user2.password}"
    click_button("Login")

    visit dashboard_index_path

    click_button('Discover Movies')

    expect(current_path).to eq(discovermovies_path)
  end
end
