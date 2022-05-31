class AddAttributesToBoats < ActiveRecord::Migration[7.0]
  def change
    add_column :boats, :boat_type, :string
    add_reference :boats, :user
    add_column :boats, :total_occupancy, :integer
    add_column :boats, :price, :integer
  end
end
