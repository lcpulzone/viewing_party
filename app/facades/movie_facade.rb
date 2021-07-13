class MovieFacade
  def self.top_40_movies
    MovieService.get_top_40_movies_part_1.merge(MovieService.get_top_40_movies_part_2)
  end
end
