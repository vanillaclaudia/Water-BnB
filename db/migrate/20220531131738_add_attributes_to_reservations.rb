class AddAttributesToReservations < ActiveRecord::Migration[7.0]
  def change
    add_reference :reservations, :user, index: true
    add_reference :reservations, :boat, index: true
    add_foreign_key :reservations, :users
    add_foreign_key :reservations, :boat
  end
end
