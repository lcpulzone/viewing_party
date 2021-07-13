class MovieFacade
  def self.top_40_movies
    MovieService.get_top_40_movies_part_1[:results].concat(MovieService.get_top_40_movies_part_2[:results])
  end

  def self.movie_results(movie)
    MovieService.search_movie_results(movie)[:results]
  end
end
