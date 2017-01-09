ParkingSpace.create!(name: "Parking with instant booking",
                     cost_per_hour: 2,
                     instant_booking: 1)

ParkingSpace.create!(name: "Parking with booking only",
                     cost_per_hour: 5,
                     instant_booking: 0)

20.times do
  name = Faker::Address.street_address
  cost_per_hour = Faker::Number.between(1, 10)
  instant_booking = Faker::Boolean.boolean(0.6)

  ParkingSpace.create!(name: name,
                       cost_per_hour: cost_per_hour,
                       instant_booking: instant_booking)
end
