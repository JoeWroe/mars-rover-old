require 'controller'

describe Controller do

  subject(:controller) { described_class.new}

  it 'can question if an object is #online?' do
    expect(controller).to respond_to(:online?).with(1).argument
  end

  it 'can land an object' do
    mars_rover = MarsRover.new
    plateau    = Plateau.new
    controller.land(mars_rover, plateau)
    expect(mars_rover.landed(plateau)).to eq(true)
  end
end
