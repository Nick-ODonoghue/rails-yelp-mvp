class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.save
    redirect_to review_path(@review)
  end

  def restaurant_params
    params.require(:review).permit(:rating, :content)
  end
end
