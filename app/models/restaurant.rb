class Restaurant < ApplicationRecord
    has_many :dish, dependent: :destroy
    has_one_attached :photo

    validates :name, presence: true
    validates :address, presence: true
    validates :rate, presence: true, numericality: { greather_or_equal_than: 0, less_or_equal_than: 5 }
end
