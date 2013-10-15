class Movie < ActiveResource::Base  
  #  include HTTParty
  require 'rest_client'
  #  self.site = "http://api.rottentomatoes.com"
  SECRET_KEY = "3je98hbvscvfwz6rgz2t8gkg"
  def self.search_movie(search_query)
    #    self.get("api/public/v1.0.json?apikey=#{SECRET_KEY}")
    query = search_query.split.join('+')
    res = RestClient.get "http://api.rottentomatoes.com/api/public/v1.0/movies.json?apikey=#{SECRET_KEY}&q=#{query}&page_limit=5"
    result = JSON.parse (res)
  end
  
  def self.get_movie(movie_id)
    res = RestClient.get "http://api.rottentomatoes.com/api/public/v1.0/movies/#{movie_id}.json?apikey=#{SECRET_KEY}"
    result = JSON.parse (res)
  end
  
end 