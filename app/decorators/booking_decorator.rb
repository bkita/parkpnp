class BookingDecorator < Drape::Decorator
  delegate_all

  def payment_status
    if model.payment_status
      'payment completed'
    else
      'waiting for payment'
    end
  end
end
