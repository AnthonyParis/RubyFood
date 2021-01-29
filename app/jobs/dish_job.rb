class DishJob < ApplicationJob
  queue_as :default

  def perform(restaurant, current_user)
    # Do something later
    @dish1 = restaurant.dish.create(name: "Makis Saumon", price: 5.0)
    @dish1.restaurant = restaurant
    @dish1.restaurant.user = current_user
    @dish1.save

    @dish2 = restaurant.dish.create(name: "Makis Fromage", price: 4.5)
    @dish2.restaurant = restaurant
    @dish2.restaurant.user = current_user
    @dish2.save

    @dish3 = restaurant.dish.create(name: "Makis Avocat", price: 4.5)
    @dish3.restaurant = restaurant
    @dish3.restaurant.user = current_user
    @dish3.save

  end
end
