class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
    def index
        @restaurants = policy_scope(Restaurant)
        #@restaurants = Restaurant.all
    end

    def show
    end

    def new
        @restaurant = Restaurant.new
        authorize @restaurant
    end

    def create
        @restaurant = Restaurant.new(restaurant_param)
        authorize @restaurant
        @restaurant.user = current_user
        if @restaurant.save
            DishJob.perform_now(@restaurant,current_user)
            #DishJob.perform_later(@restaurant,current_user)
            redirect_to @restaurant
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @restaurant.update(restaurant_param)
            redirect_to @restaurant
        else
            render :edit
        end
    end

    def destroy
        #RestaurantJob.perform_now(params[:id])
        @restaurant.destroy
        redirect_to root_path
    end

    private
        def set_restaurant
            @restaurant = Restaurant.find(params[:id])
            authorize @restaurant
        end
        def restaurant_param
            params.require(:restaurant).permit(:name, :address, :rate, :photo)
        end
end
