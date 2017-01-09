require 'rails_helper'

RSpec.describe 'ParkingSpaces', type: :request do

  describe 'GET /parking_spaces' do
    it 'returns status 200' do
      get parking_spaces_path
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /parking_spaces/:id' do
    it 'returns status 200' do
      parking = create(:parking_space)
      get parking_space_path(parking)
      expect(response).to have_http_status(200)
    end
  end
end
