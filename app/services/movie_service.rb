class MovieService
  def self.get_top_40_movies_part_1
    response = conn.get("movie/top_rated?api_key=#{ENV['tmdb_key']}&language=en-US&page=1")
    parse_json(response)
  end

  def self.get_top_40_movies_part_2
    response = conn.get("movie/top_rated?api_key=#{ENV['tmdb_key']}&language=en-US&page=2")
    parse_json(response)
  end

  def self.search_movie_results(movie)
    response = conn.get("search/movie?api_key=#{ENV['tmdb_key']}&language=en-US&query=#{movie}&page=1&include_adult=false")
    parse_json(response)
  end

  def self.find_movie(id)
    response = conn.get("movie/#{id}?api_key=#{ENV['tmdb_key']}&language=en-US")
    parse_json(response)
  end

  def self.review_info(id)
    response = conn.get("movie/#{id}/reviews?api_key=#{ENV['tmdb_key']}&language=en-US&page=1")
    parse_json(response)
  end

  def self.cast_member_info(id)
    response = conn.get("movie/#{id}/credits?api_key=#{ENV['tmdb_key']}&language=en-US")
    parse_json(response)
  end

  def self.conn
    Faraday.new(url: "https://api.themoviedb.org/3/")
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  private_class_method :conn
end
