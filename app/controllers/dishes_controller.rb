class DishesController < ApplicationController
    def create
        @restaurant = Restaurant.find(params[:restaurant_id])
        @dish = @restaurant.dish.create(dish_params)

        redirect_to restaurant_path(@restaurant)
    end

    def destroy
        @restaurant = Restaurant.find(params[:restaurant_id])
        @dish = @restaurant.dish.find(params[:id])
        @dish.destroy

        redirect_to restaurant_path(@restaurant)
    end

    private
        def dish_params
            params.require(:dish).permit(:name, :price, :photo)
        end
end
