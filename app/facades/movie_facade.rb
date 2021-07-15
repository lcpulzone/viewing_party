class MovieFacade
  def self.top_40_movies
    MovieService.get_top_40_movies_part_1[:results].concat(MovieService.get_top_40_movies_part_2[:results])
  end

  def self.movie_results(movie)
    MovieService.search_movie_results(movie)[:results]
  end

  def self.find_base_movie_details_by_movie(movie)
    MovieService.search_movie_results(movie)[:results].map do |movie_data|
      MovieDetails.new(movie_data)
    end
  end
end
