class ParkingSpaceDecorator < Draper::Decorator
  delegate_all

  def booking
    if model.instant_booking
      h.render 'stripe_instant_booking'
    else
      'booking'
    end
  end
end
