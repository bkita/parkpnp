class ParkingSpaceDecorator
  attr_reader :component

  def initialize(component)
    @component = component
  end

  def booking
    component.instant_booking ? 'instant booking' : 'booking'
  end
end