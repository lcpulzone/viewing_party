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

    describe "#find_movie(id)" do
      it 'returns the movie results' do
        expect(MovieService.find_movie(10681).class).to eq(Hash)
        expect(MovieService.find_movie(10681)[:title]).to eq("WALL·E")
      end
    end

    describe "#runtime_genre(id)" do
      it 'returns the movie results' do
        expect(MovieService.runtime_genre(10681).class).to eq(Hash)
        expect(MovieService.runtime_genre(10681)[:runtime]).to eq(98)
        require "pry";binding.pry
      end
    end

    describe "#review_info(id)" do
      it 'returns the movie results' do
        expect(MovieService.review_info(10681).class).to eq(Hash)
        expect(MovieService.review_info(10681)[:results][1][:author]).to eq("Kamurai")
      end
    end

    describe "#cast_member_info(id)" do
      it 'returns the movie results' do
        expect(MovieService.cast_member_info(10681).class).to eq(Hash)
        expect(MovieService.cast_member_info(10681)[:cast][0][:name]).to eq("Ben Burtt")
      end
    end
  end
end
