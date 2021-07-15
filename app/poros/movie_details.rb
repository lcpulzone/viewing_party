class MovieDetails
  attr_reader :title, :vote_average, :overview, :vote_count, :run_time_hr, :run_time_min, :genre, :cast, :review_author, :review_info

  def initialize(movie_data)
    @title = movie_data[:title]
    @vote_average = movie_data[:vote_average]
    @overview = movie_data[:overview]
    @vote_count = movie_data[:vote_count]
    @run_time_hr = movie_data[:run_time_hr]
    @run_time_min = movie_data[:run_time_min]
    @genre = movie_data[:genre]
    @cast = movie_data[:cast]
    @review_author = movie_data[:review_author]
    @review_info = movie_data[:review_info]
  end
end
