require 'rails_helper'

describe 'MoviesFacade' do
  it 'can list the top 40 results of the MovieServices.top_40 methods' do
    expect(MovieFacade.top_40_movies.class).to eq(Array)
    expect(MovieFacade.top_40_movies.count).to eq(40)
  end

  it 'can return an array of movie search results that are case insensitive' do
    expect(MovieFacade.movie_results("wALL-E").class).to eq(Array)
    expect(MovieFacade.movie_results("WALL-E")[0][:vote_average]).to eq(8)
  end

  it 'can find the details of a movie' do
    expect(MovieFacade.find_movie_details(10681).class).to eq(Hash)
  end

  it 'can find the reviews of a movie' do
    expect(MovieFacade.find_reviews(10681).class).to eq(Hash)
  end

  it 'can be one hash' do
    expect(MovieFacade.all_movie_details(10681).class).to eq(MovieDetails)
  end
end
