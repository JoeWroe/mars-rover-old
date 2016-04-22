require 'plateau'

describe Plateau do

  it 'can contain multiple vehicles' do
    controller   = Controller.new
    mars_rover_1 = MarsRover.new
    mars_rover_2 = MarsRover.new
    controller.land(mars_rover_1, subject)
    controller.land(mars_rover_2, subject)
    expect(subject.currently_landed_vehicles).to eq([mars_rover_1, mars_rover_2])
  end

end
