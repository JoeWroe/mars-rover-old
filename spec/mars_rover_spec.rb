require 'mars_rover'

describe MarsRover do

  subject(:mars_rover) { described_class.new }

  describe 'state of #online' do

    it 'responds with "true" when MarsRover is #online' do
      expect(mars_rover.online).to eq(true)
    end
  end

  describe 'camera' do

    it 'is off when initialized' do
      expect(mars_rover.recording).to eq(false)
    end

    it 'can be turned on' do
      mars_rover.toggle_record
      expect(mars_rover.recording).to eq(true)
    end
  end

  describe 'position' do

    it 'can return its current position' do
      expect(mars_rover.current_position).to eq('0 0 N')
    end
  end
end
