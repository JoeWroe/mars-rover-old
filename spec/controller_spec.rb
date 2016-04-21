require 'controller'

describe Controller do

  it 'can question if an object is #online?' do
    expect(subject).to respond_to(:online?).with(1).argument
  end
end
