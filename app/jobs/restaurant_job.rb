class RestaurantJob < ApplicationJob
  queue_as :default

  def perform(id)
    # Do something later
    Restaurant.destroy(id)
  end
end
