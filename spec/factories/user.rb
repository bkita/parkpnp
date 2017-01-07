FactoryGirl.define do
  factory :user do |f|
    f.sequence(:email) { |n| "jo-#{}-black@testemail.com" }
    f.password "Password123"
  end
end