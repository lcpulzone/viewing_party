require 'rails_helper'

RSpec.describe 'New Viewing Party Page' do
  describe 'when I visit the New Viewing Party Page' do
    describe 'for the new viewing party form'  do
      it 'includes movie title' do
        visit new_viewing_party_path

        expect(page).to have_content("Movie title:")
      end
      it 'includes movie party duration' do
        visit new_viewing_party_path

        expect(page).to have_content("Duration of party:")
      end
      it 'includes start day' do
        visit new_viewing_party_path

        expect(page).to have_content("Day:")
      end
      it 'includes start time' do
        visit new_viewing_party_path

        expect(page).to have_content("Start time:")
      end
      it 'includes friends to add to viewing party' do
        visit new_viewing_party_path

        expect(page).to have_content("Include friends:")
      end

      it 'includes a create button to create a viewing party' do
        visit new_viewing_party_path

        expect(page).to have_button("Create Viewing Party")
      end
    end
  end
end
