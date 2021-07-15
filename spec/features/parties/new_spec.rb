require 'rails_helper'

RSpec.describe 'New Viewing Party Page' do
  describe 'when I visit the New Viewing Party Page' do
    it 'has a section that includes movie title' do
      visit new_viewing_party_path

      expect(page).to have_content("Movie Title:")
    end
  end
end
