class CreateBoats < ActiveRecord::Migration[7.0]
  def change
    create_table :jewels do |t|
      t.string :boat_type
      t.float :price
      t.text :description
      t.integer :total_occupancy
      t.string :photo
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
