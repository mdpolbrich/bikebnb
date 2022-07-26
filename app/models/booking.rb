class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :bike
  # belongs_to another :user through bike

  validates :start, presence: true
  validates :end, presence: true
end
