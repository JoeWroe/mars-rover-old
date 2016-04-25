class Plateau

  attr_accessor :number_of_landed_rovers, :x_axis_max, :y_axis_max

  def initialize
    @number_of_landed_rovers = 0
    @x_axis_max              = nil
    @y_axis_max              = nil
  end

  def grid_size
    "Maximum point on x-axis is #{x_axis_max},\nmaximum point on y-axis is #{y_axis_max}."
  end

end
