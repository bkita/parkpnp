class ParkingSpace < ApplicationRecord

  validates :name, presence: true, length: { in: 10..256 }
  validates :cost_per_hour, presence: true, :inclusion => 1..10
  validates :instant_booking, inclusion: { in: [ true, false ] }
end
