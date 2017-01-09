require 'stripe'

class StripeService

  def self.customer(stripeEmail, stripeToken)
    begin
      Stripe::Customer.create(:email => stripeEmail,
                              :source => stripeToken)
    rescue
      false
    end
  end

  def self.charge(options = {})
    begin
      Stripe::Charge.create(:customer => options[:customer_id],
                            :amount => options[:amount],
                            :description => options[:description],
                            :currency => 'usd')
    rescue
      false
    end
  end
end
