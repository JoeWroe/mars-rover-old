require_relative 'plateau'

class MarsRover

  attr_reader :online, :landed, :recording

  def initialize
    @online    = true
    @landed    = false
    @recording = false
  end

  def landed(location)
    add_rover_to_location(location)
    @landed = true
  end

  def toggle_record
    @recording = !@recording
  end

  private

  def add_rover_to_location(location)
    location.number_of_landed_rovers += 1
  end
end
