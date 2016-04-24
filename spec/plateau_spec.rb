require 'plateau'

describe Plateau do

  it 'can contain a vehicle' do
    plateau      = Plateau.new
    controller   = Controller.new
    mars_rover   = MarsRover.new
    controller.land(mars_rover, plateau)
    expect(plateau.number_of_landed_rovers).to eq(1)
  end

end
