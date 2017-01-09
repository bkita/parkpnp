require 'rails_helper'

RSpec.describe Booking, type: :model do

  let(:booking) { Booking.new(parking_space_id: 1,
                              parking_space_name: '55 56 Francis Street Dublin 8',
                              price_per_hour: 10,
                              total_price: 20,
                              number_of_hours: 2,
                              user_id: 1,
                              payment_status: 1) }

  describe 'booking validation' do

    it 'returns false for empty parking_space_id' do
      booking.parking_space_id = ''
      expect(booking.valid?).to be false
    end

    it 'returns false for empty price_per_hour' do
      booking.price_per_hour = ''
      expect(booking.valid?).to be false
    end

    it 'returns false for empty total_price' do
      booking.total_price = ''
      expect(booking.valid?).to be false
    end

    it 'returns false for empty number_of_hours' do
      booking.number_of_hours = ''
      expect(booking.valid?).to be false
    end

    it 'returns false for empty user_id' do
      booking.user_id = ''
      expect(booking.valid?).to be false
    end

    it 'returns false for empty payment_status' do
      booking.payment_status = ''
      expect(booking.valid?).to be false
    end

    it 'returns true for valid booking object' do
      user = create(:user)
      booking.user_id = user.id
      expect(booking.valid?).to be true
    end
  end
end
