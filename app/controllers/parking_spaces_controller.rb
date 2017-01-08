class ParkingSpacesController < ApplicationController

  def index
    @parking_spaces = ParkingSpace.all
  end
end
