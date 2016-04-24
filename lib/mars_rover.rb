require_relative 'plateau'

class MarsRover

  attr_reader :online, :landed

  def initialize
    @online = true
    @landed = false
  end

  def landed(location)
    add_rover_to_location(location)
    @landed = true
  end

  private

  def add_rover_to_location(location)
    location.number_of_landed_rovers += 1
  end
end
