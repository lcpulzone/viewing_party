require 'rails_helper'

describe MovieService do
  describe "class methods" do
    describe "#get_top40_movies_part_1" do
      it 'returns the first 20 movies of the top trending movies' do
        expect(MovieService.get_top_40_movies_part_1.class).to eq(Hash)
      end
    end
  end
end
