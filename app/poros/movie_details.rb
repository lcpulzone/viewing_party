class MovieDetails
  attr_reader :title, :vote_average, :overview, :vote_count

  def initialize(movie_data)
    @title = movie_data[:title]
    @vote_average = movie_data[:vote_average]
    @overview = movie_data[:overview]
    @vote_count = movie_data[:vote_count]
  end
end
