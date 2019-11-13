class Property < ApplicationRecord
  has_many :nearest_stations, inverse_of: :property
  accepts_nested_attributes_for :nearest_stations
  validates :property_name, presence: true
  validates :rent, presence: true
  validates :address, presence: true
  validates :age_of_a_building, presence: true 
end
