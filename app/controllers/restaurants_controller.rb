class RestaurantsController < ApplicationController
 before_action :set_restaurant, except: [:index, :new, :create]

  def index
    @restaurants = Restaurant.all
  end

 def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if  @restaurant.save
          redirect_to restaurant_path(@restaurant)
    else
      render :new
    end


  end

  def show
  end

  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  def edit
  end

  def destroy
    @restaurant.delete
    redirect_to restaurants_path
  end

 private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id].to_i)
  end

end
