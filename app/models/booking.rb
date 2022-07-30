class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :bike, dependent: :destroy
end
