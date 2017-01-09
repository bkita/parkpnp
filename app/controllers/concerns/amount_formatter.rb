module AmountFormatter
  extend ActiveSupport::Concern

  def amount_in_cents(amount)
    amount.to_i * 100
  end
end