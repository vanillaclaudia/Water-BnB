class AddAttributesToReservations < ActiveRecord::Migration[7.0]
  def change
    add_reference :reservations, :user
    add_reference :reservations, :boat
  end
end
