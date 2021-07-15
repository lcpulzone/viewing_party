class MoviesController < ApplicationController
  def index; end

  def show
    @top40movies = MovieFacade.top_40_movies
  end

  def search
    @movies_result = MovieFacade.movie_results(params[:search])
  end

  def details
    @basedetails = MovieFacade.all_movie_details(params[:id])
  end

  def new; end

  def create; end

  def edit; end

  def update; end

  def destroy; end

  # private
  # def _params
  #   params.permit(:)
  # end
end
