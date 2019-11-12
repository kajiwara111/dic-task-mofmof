class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.string :property_name
      t.integer :rent
      t.text :address
      t.integer :age_of_a_building
      t.text :note
      t.string :train_route_name1
      t.string :station_name1
      t.integer :walking_minutes1
      t.string :train_route_name2
      t.string :station_name2
      t.integer :walking_minutes2
      t.timestamps
    end
  end
end
