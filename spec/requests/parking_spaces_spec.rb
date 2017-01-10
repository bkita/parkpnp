require 'rails_helper'

RSpec.describe 'ParkingSpaces', type: :request do

  describe 'GET /parking_spaces' do
    it 'returns status 200' do
      get parking_spaces_path
      expect(response).to have_http_status(200)
    end
  end

  describe 'visits /parking_spaces/:id' do
    it 'returns booking message' do
      parking = create(:parking_space)
      visit parking_space_path(parking)
      expect(page).to have_selector('#booking', :text => 'save credit cart and create booking - not implemented')
    end
  end
end
