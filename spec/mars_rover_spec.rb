require 'mars_rover'

describe MarsRover do

  subject(:mars_rover) { described_class.new }

  it 'responds with "true" when MarsRover is #online' do
    expect(mars_rover.online).to eq(true)
  end
end
