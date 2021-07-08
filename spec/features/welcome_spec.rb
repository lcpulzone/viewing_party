# When a user visits the root path they should be on the welcome page which includes:
require 'rails_helper'

RSpec.describe "Welcome Page" do
  it "has a welcome message" do
    visit root_path

  end

  # it "has a brief description of the application" do
  #   #stuff
  # end
  #
  # it "has a BUTTon to log in" do
  #   #stuff
  # end
  #
  # it "has a link to registration" do
  #   #stuff
  # end
end
