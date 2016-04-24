require_relative 'plateau'

class MarsRover

  attr_reader :online, :landed, :recording
  attr_accessor :x_coordinate, :y_coordinate, :heading

  def initialize
    @online       = true
    @landed       = false
    @recording    = false
    @x_coordinate = 0
    @y_coordinate = 0
    @heading      = 'N'
  end

  def landed(location)
    add_rover_to_location(location)
    @landed = true
  end

  def toggle_record
    @recording = !@recording
  end

  def current_position
    "#{x_coordinate} #{y_coordinate} #{heading}"
  end

  private

  def add_rover_to_location(location)
    location.number_of_landed_rovers += 1
  end
end
