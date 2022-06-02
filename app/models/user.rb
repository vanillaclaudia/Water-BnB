class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable


  has_many :boats
  has_many :reservations
  has_many :rented_boats, through: :reservations, source: :boat
  has_one_attached :avatar

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # validates :username, uniqueness: true
end
