class Bike < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :image

  validates :name, :description, :location, :price, presence: true
end
