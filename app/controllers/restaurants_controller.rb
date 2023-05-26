class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new # Needed to instantiate the form_with
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save # Will raise ActiveModel::ForbiddenAttributesError
    # No need for app/views/restaurants/create.html.erb
    redirect_to restaurant_path(@restaurant)
  end

  # view details of the restaurants
  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
