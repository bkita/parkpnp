module PriceFormatter
  extend ActiveSupport::Concern

  module ClassMethods
    def total_price(cost_per_hour, number_of_hours)
      (cost_per_hour.to_i * 100) * number_of_hours.to_i
    end
  end
end