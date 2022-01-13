class Flat < ApplicationRecord
  validates :name, :address, :description, :price_per_night, :number_of_guests, presence: true
  validates :price_per_night, inclusion: { in: 1..1000 }, numericality: { only_integer: true }
  validates :number_of_guests, inclusion: { in: 1..50 }, numericality: { only_integer: true }
end
