class BookingsController < ApplicationController
  # before_action :authenticate_user!

  def index
    @bookings = Booking.where(user_id: user_id).decorate
  end

  def show
    @booking = Booking.find(booking_id).decorate
  end

  def create
    if instant_booking
      @booking = Booking.create_booking_with_payment(stripeEmail: stripeEmail,
                                                     stripeToken: stripeToken,
                                                     user_id: user_id,
                                                     parking_space_id: parking_space_id,
                                                     parking_space_name: parking_space_name,
                                                     cost_per_hour: cost_per_hour,
                                                     number_of_hours: number_of_hours)
    end

    if @booking.save
      flash[:success] = 'Booking with payment completed'
      redirect_to @booking
    else
      flash[:error] = 'Can not create new booking'
      redirect_to parking_spaces_path
    end
  end

  private

  def user_id
    current_user.id
  end

  def cost_per_hour
    params[:cost_per_hour]
  end

  def parking_space_name
    params[:parking_space_name]
  end

  def parking_space_id
    params[:parking_space_id]
  end

  def instant_booking
    params[:instant_booking]
  end

  def number_of_hours
    params[:number_of_hours]
  end

  def stripeEmail
    params[:stripeEmail]
  end

  def stripeToken
    params[:stripeToken]
  end

  def booking_id
    params[:id]
  end
end
