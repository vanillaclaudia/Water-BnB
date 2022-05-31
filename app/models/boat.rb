class Boat < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :user
  has_many :reservations

  validates :boat_type, :owner_id, :location, :total_occupancy, :price, presence: true
end
