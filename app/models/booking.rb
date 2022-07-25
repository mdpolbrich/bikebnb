class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :bike

  validates :start, presence: true
  validates :end, presence: true
end
