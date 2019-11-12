class CreateNearestStations < ActiveRecord::Migration[5.0]
  def change
    create_table :nearest_stations do |t|
      t.string :train_route_name
      t.string :station_name
      t.integer :walking_minutes
      t.timestamps
    end
  end
end
