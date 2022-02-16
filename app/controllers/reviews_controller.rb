class ReviewsController < ApplicationController

  # A visitor can see the details of a restaurant, with all the reviews related to the restaurant.
  # GET "restaurants/38"
  # A visitor can add a new review to a restaurant
  # GET "restaurants/38/reviews/new"
  # POST "restaurants/38/reviews"
def show
  @restaurant = Restaurant.find(params[:id])
end

def create
  @review = Review.new(review_params)
  @restaurant = Restaurant.find(parmans[:restaurant_io])
  @review.restaurant = @restaurant

  if @review.save
    redirect_to restaurant_path(@restaurant)
  else
    render :new
  end
ends

  private

def reviews_params
  params.require(:review).permit(:rating, :content)
end
end
