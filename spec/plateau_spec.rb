require 'plateau'

describe Plateau do

  subject(:plateau) { described_class.new }

  it 'can contain a vehicle' do
    controller   = Controller.new
    mars_rover   = MarsRover.new
    controller.land(mars_rover, plateau)
    expect(plateau.number_of_landed_rovers).to eq(1)
  end

end
