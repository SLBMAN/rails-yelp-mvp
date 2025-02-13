class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    # Build the review with content
    @review = Review.new(review_params)
    # Find the restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
    # Associate the review with restaurant
    @review.restaurant = @restaurant
    # Save the review
    @review.save
    redirect_to restaurant_path(@restaurant)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
