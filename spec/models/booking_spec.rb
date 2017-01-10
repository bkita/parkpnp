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

    it { should belong_to(:user) }
    it { should validate_presence_of(:parking_space_id) }
    it { should validate_presence_of(:price_per_hour) }
    it { should validate_presence_of(:total_price) }
    it { should validate_presence_of(:number_of_hours) }
    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:payment_status) }

    it 'returns true for valid booking object' do
      user = create(:user)
      booking.user_id = user.id
      expect(booking.valid?).to be true
    end
  end
end
