class Bike < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, presence: true, uniqueness: true
  validates :model, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :year, presence: true
  validates :price, presence: true
end
