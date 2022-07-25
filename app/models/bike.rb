class Bike < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :bookings

  validates :name, presence: true, uniqueness: true
  validates :location, presence: true
  validates :price, presence: true
end
