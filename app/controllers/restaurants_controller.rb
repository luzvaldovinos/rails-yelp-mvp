class RestaurantsController < ApplicationController
#   A visitor can see the list of all restaurants.
# GET "restaurants"
# A visitor can add a new restaurant, and be redirected to the show view of that new restaurant.
# GET "restaurants/new"
# POST "restaurants"

def index
  @restaurant = Restaurant.all
end

def create
  @restaurant = Restaurant.new(restaurant_params)
  @restaurant.save
  redirect_to restaurant_path(@restaurant)
end

  private

def restaurant_params
  params.require(:restaurant).permit(name, address, phone_number, category)
end
end
