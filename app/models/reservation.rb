class Reservation < ApplicationRecord
  # devise :database_authenticatable, :registerable,
  #       :recoverable, :rememberable, :validatable

  belongs_to :boat
  belongs_to :user

end
