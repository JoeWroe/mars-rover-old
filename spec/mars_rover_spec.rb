require 'mars_rover'

describe MarsRover do

  it 'responds with "true" when MarsRover is #online' do
    expect(subject.online).to eq(true)
  end
end
