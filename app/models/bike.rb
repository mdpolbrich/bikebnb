class Bike < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :image

  validates :name, :description, :location, :price, presence: true

  include PgSearch::Model

  pg_search_scope :search_by_name_and_location,
  against: [ :name, :location ],
  using: {
    tsearch: { prefix: true }
  }
end
