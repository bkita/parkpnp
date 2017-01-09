FactoryGirl.define do
  factory :booking do
    parking_space_id 1
    parking_space_name "MyString"
    price_per_hour "9.99"
    total_price "9.99"
    number_of_hours 1
    payment_status false
    user_id 1
  end
end
