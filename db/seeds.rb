20.times do
  name = Faker::Address.street_address
  cost_per_hour = Faker::Number.between(1, 10)
  instant_booking = Faker::Boolean.boolean(0.3)

  ParkingSpace.create!(name: name,
                       cost_per_hour: cost_per_hour,
                       instant_booking: instant_booking)
end
