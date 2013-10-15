class HomeController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    #    render :text => "chal itna toh hua tujhse"
  end
  
  def new
    render :text => "chal itna toh hua tujhse"
  end
  
  def search
    @results = Movie.search_movie(params[:search_query])
    @search_query_was = params[:search_query]
  end
  
  def movie_detail
    @movie = Movie.get_movie(params[:id])
  end
  
end
