class ReviewsController < ApplicationController
  def index
    @reviews = Review.includes(:movie).all
  end
end
