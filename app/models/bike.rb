class Bike < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :image
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  validates :name, :description, :location, :price, presence: true
end
