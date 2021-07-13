require 'rails_helper'

describe MovieService do
  describe "class methods" do
    describe "#get_top_40_movies_part_1" do
      it 'returns the first 20 movies of the top trending movies' do
        expect(MovieService.get_top_40_movies_part_1.class).to eq(Hash)
        expect(MovieService.get_top_40_movies_part_1[:results].count).to eq(20)
      end
    end

    describe "#get_top_40_movies_part_2" do
      it 'returns the second 20 movies of the top trending movies' do
        expect(MovieService.get_top_40_movies_part_2.class).to eq(Hash)
        expect(MovieService.get_top_40_movies_part_2[:results].count).to eq(20)
      end
    end

    describe "#search_movie_results(movie)" do
      it 'returns movie search results' do
        expect(MovieService.search_movie_results("caddyshack").class).to eq(Hash)
        expect(MovieService.search_movie_results("caddyshack")[:results][0][:release_date]).to eq("1980-07-25")
        expect(MovieService.search_movie_results("the daRk Knight")[:results][0][:release_date]).to eq("2008-07-16")
      end
    end
  end
end
