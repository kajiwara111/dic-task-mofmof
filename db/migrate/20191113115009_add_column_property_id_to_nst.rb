class AddColumnPropertyIdToNst < ActiveRecord::Migration[5.0]
  def change
    add_column :nearest_stations, :property_id, :integer
  end
end
