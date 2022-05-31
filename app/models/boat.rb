class Boat < ApplicationRecord
  belongs_to :user
  has_many :reservations

  validates :boat_type, :total_occupancy, :price, presence: true
end
