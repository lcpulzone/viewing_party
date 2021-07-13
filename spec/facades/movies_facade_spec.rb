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
end
