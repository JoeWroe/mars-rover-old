require 'controller'

describe Controller do

  subject(:controller) { described_class.new}

  it 'can question if an object is #online?' do
    expect(controller).to respond_to(:online?).with(1).argument
  end
end
