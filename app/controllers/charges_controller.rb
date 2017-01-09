class ChargesController < ApplicationController
  include AmountFormatter

  def create
    @amount = params[:cost_per_hour]
    @description = params[:description]
    @number_of_hours = params[:number_of_hours]

    customer = Stripe::Customer.create(
        :email => params[:stripeEmail],
        :source => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
        :customer => customer.id,
        :amount => amount_in_cents(@amount),
        :description => @description,
        :currency => 'usd'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
