require 'controller'

describe Controller do

  subject(:controller) { described_class.new}

  describe 'checking and changing the #online state of an object' do

    it 'can question if an object is #online?' do
      expect(controller).to respond_to(:online?).with(1).argument
    end
  end

  describe 'landing objects' do

    it 'can land an object' do
      mars_rover = MarsRover.new
      plateau    = Plateau.new
      controller.land(mars_rover, plateau)
      expect(mars_rover.landed(plateau)).to eq(true)
    end
  end

  describe 'checking and changing the state of an objects camera' do

    it 'can respond to #toggle_recording' do
      expect(controller).to respond_to(:toggle_recording).with(1).argument
    end

    it 'can switch a vehicles recording on' do
      mars_rover = MarsRover.new
      controller.toggle_recording(mars_rover)
      expect(mars_rover.recording).to eq(true)
    end

    it 'can switch a vehicles recording off' do
      mars_rover = MarsRover.new
      controller.toggle_recording(mars_rover)
      controller.toggle_recording(mars_rover)
      expect(mars_rover.recording).to eq(false)
    end
  end

  describe 'checking a vehicles position' do
    it 'can question the position of an object' do
      expect(controller).to respond_to(:vehicle_position).with(1).argument
    end
  end

  describe 'managing a navigation grid for a plateau' do
    it 'can respond to #add_navigation_grid' do
      expect(controller).to respond_to(:add_navigation_grid).with(3).arguments
    end

    it 'can check the maximum boundries of the grid' do
      plateau = Plateau.new
      expect(controller.check_location_bounds(plateau)).to eq(plateau.grid_size)
    end
  end
end
