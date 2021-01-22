class Dish < ApplicationRecord
  belongs_to :restaurant
  has_one_attached :photo
  validates :name, presence: true
  validates :price, presence: true, numericality: { greather_or_equal_than: 0, less_than: 99 }
end
