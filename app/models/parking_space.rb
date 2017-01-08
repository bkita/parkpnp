class ParkingSpace < ApplicationRecord

  validates :name, presence: true, length: { minimum: 10 }
  validates :cost_per_hour, presence: true, :inclusion => 1..10
  validates :instant_booking, presence: true
end