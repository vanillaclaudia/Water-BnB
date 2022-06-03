class Boat < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_one_attached :photo

  validates :boat_type, :total_occupancy, :price, presence: true
end
