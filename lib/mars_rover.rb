require_relative 'plateau'

class MarsRover

  attr_reader :online, :landed

  def initialize
    @online = true
    @landed = false
  end

  def landed(location)
    location.number_of_landed_rovers += 1
    @landed = true
  end
end
