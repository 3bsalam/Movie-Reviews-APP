class MoviesController < ApplicationController
  def index
    if params[:search]
      @movies = Movie.where('actor LIKE ?', "%#{params[:search]}%")
    else
      @movies = Movie.left_joins(:reviews).group(:id).order('AVG(reviews.rating) DESC')
    end
  end
end
