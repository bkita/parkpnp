class Booking < ApplicationRecord
  include PriceFormatter

  belongs_to :user

  validates :parking_space_id, presence: true
  validates :parking_space_name, presence: true
  validates :price_per_hour, presence: true
  validates :total_price, presence: true
  validates :number_of_hours, presence: true
  validates :payment_status, presence: true
  validates :user_id, presence: true

  def self.create_booking_with_payment(options = {})
    stripeEmail = options[:stripeEmail]
    stripeToken = options[:stripeToken]
    user_id = options[:user_id]
    parking_space_id = options[:parking_space_id]
    parking_space_name = options[:parking_space_name]
    cost_per_hour = options[:cost_per_hour]
    number_of_hours = options[:number_of_hours]
    total_price = total_price(cost_per_hour, number_of_hours)

    customer = StripeService.customer(stripeEmail, stripeToken)
    charge = StripeService.charge(customer_id: customer.id, amount: total_price, description: parking_space_name) if customer

    if charge
      Booking.new(parking_space_id: parking_space_id,
                  parking_space_name: parking_space_name,
                  price_per_hour: cost_per_hour,
                  total_price: total_price,
                  number_of_hours: number_of_hours,
                  user_id: user_id,
                  payment_status: 1)
    else
      false
    end
  end
end
