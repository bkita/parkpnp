class ParkingSpacesController < ApplicationController

  def index
    @parking_spaces = ParkingSpace.all
  end

  def show
    @parking_space = ParkingSpace.find(params[:id]).decorate
  end
end
