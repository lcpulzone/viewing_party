require 'rails_helper'

 RSpec.describe "Movies Search Result Page" do
   describe 'for the Movies Search Page' do
      it 'can return results and show me the results when I search for a movie' do
        visit discovermovies_path

        fill_in :search, with: "caddyshack"
        click_button 'Search'

        expect(current_path).to eq(search_path)

        expect(page).to have_content("Caddyshack")
      end
    end
 end
