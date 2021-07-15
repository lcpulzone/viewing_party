class MovieFacade
  def self.top_40_movies
    MovieService.get_top_40_movies_part_1[:results].concat(MovieService.get_top_40_movies_part_2[:results])
  end

  def self.movie_results(movie)
    MovieService.search_movie_results(movie)[:results]
  end

  def self.all_movie_details(id)
    a = find_movie_details(id)
    b = find_reviews(id)
    c = find_cast_member_info(id)
    d = a.merge(b)
    movie_data = d.merge(c)

    MovieDetails.new(movie_data)
  end

  def self.find_movie_details(id)
    MovieService.find_movie(id)
  end

  def self.find_reviews(id)
    MovieService.review_info(id)
  end

  def self.find_cast_member_info(id)
    MovieService.cast_member_info(id)
  end
end
