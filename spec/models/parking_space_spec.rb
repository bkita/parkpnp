require 'rails_helper'

RSpec.describe ParkingSpace, type: :model do

  let(:parking_space) { ParkingSpace.new(name: 'Francis Street, Dublin 8', cost_per_hour: 10, instant_booking: true) }

  describe 'parking space validation' do

    it 'returns false for empty parking space name' do
      parking_space.name = ''
      expect(parking_space.valid?).to be false
    end

    it 'returns false for to short parking name space' do
      parking_space.name = 'a'*9
      expect(parking_space.valid?).to be false
    end

    it 'returns false for empty cost_per_hour' do
      parking_space.cost_per_hour = ''
      expect(parking_space.valid?).to be false
    end

    it 'returns false for cost_per_hour less than 1' do
      parking_space.cost_per_hour = 0
      expect(parking_space.valid?).to be false
    end

    it 'returns false for empty instant_booking' do
      parking_space.instant_booking = ''
      expect(parking_space.valid?).to be false
    end

    it 'returns true for valid parking space' do
      expect(parking_space.valid?).to be true
    end
  end
end
