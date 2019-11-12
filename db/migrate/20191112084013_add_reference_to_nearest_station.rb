class AddReferenceToNearestStation < ActiveRecord::Migration[5.0]
  def change
    add_reference :nearest_stations, :property, foreigin_key: true
  end
end
