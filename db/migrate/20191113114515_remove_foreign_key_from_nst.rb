class RemoveForeignKeyFromNst < ActiveRecord::Migration[5.0]
  def change
    remove_foreign_key :nearest_stations, :property
    remove_reference :nearest_stations, :property, index: true
  end
end
