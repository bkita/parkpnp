require 'rails_helper'

RSpec.describe ParkingSpacesController, type: :controller do

  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end

  describe "GET #show" do
    it "responds successfully with an HTTP 200 status code" do
      parking = create(:parking_space)
      get :show, id: parking.id
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end
end
