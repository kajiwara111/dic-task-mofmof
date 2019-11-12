class DropColumnFromProperties < ActiveRecord::Migration[5.0]
  def change
    remove_column :properties, :train_route_name1, :string
    remove_column :properties, :station_name1, :string
    remove_column :properties, :walking_minutes1, :integer
    remove_column :properties, :train_route_name2, :string
    remove_column :properties, :station_name2, :string
    remove_column :properties, :walking_minutes2, :integer
  end
end
