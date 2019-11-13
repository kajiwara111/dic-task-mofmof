class NearestStation < ApplicationRecord
  belongs_to :property, inverse_of: :nearest_stations
  validates_presence_of :property
end
