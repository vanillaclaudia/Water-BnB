class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :boats
  has_many :reservations
  has_many :rented_boats, through: :bookings, source: :boat
  has_one_attached :avatar
  # validates :username, uniqueness: true
end
