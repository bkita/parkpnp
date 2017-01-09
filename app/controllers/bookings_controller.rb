class BookingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @bookings = Booking.find_by(user_id: current_user.id).decorate
  end
end
