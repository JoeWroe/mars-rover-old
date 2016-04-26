describe 'user stories' do
  # USER STORY 1
  # As a NASA controller,
  # So that I can explore Mars,
  # I would like to interact with an online Mars Rover.
  xit 'so a NASA controller can interact with a Mars Rover, check a Mars Rover is online' do
    controller = Controller.new
    mars_rover = MarsRover.new
    expect(controller.online?(mars_rover)).to eq(true)
  end

  # USER STORY 2
  # As a NASA controller,
  # So that I can explore a particular part of Mars,
  # I would like to be able to land a Mars Rover on the plateau.
  xit 'so a NASA controller can land a Mars Rover, instruct a Mars Rover to land' do
    controller   = Controller.new
    mars_rover   = MarsRover.new
    mars_plateau = Plateau.new
    controller.land(mars_rover, mars_plateau)
    expect(mars_plateau.number_of_landed_rovers).to eq(1)
  end

  #USER STORY 3
  # As a NASA controller,
  # So that we can get a complete view of the surrounding terrain to send back to Earth,
  # I would like to be able to start and stop our camera from recording.
  xit 'so a NASA controller can use the onboard camera, start and stop recording' do
    controller = Controller.new
    mars_rover = MarsRover.new
    controller.toggle_recording(mars_rover)
    expect(mars_rover.recording).to eq(true)
    controller.toggle_recording(mars_rover)
    expect(mars_rover.recording).to eq(false)
  end

  #USER STORY 4
  # As a NASA controller,
  # So that I know the position and location of a rover,
  # I would like to be able to check a rovers current position and location.
  xit 'so a NASA controller can find out a rovers position, a rover can return its coordinates' do
    controller = Controller.new
    mars_rover = MarsRover.new
    expect(controller.vehicle_position(mars_rover)).to eq('0 0 N')
  end

  #USER STORY 5
  # As a NASA controller,
  # So that I can simplify navigation,
  # I'd like to be able to divide the plateau into a grid.
  xit 'so a NASA controller can simplfy navigation, divide a plateau into a grid' do
    controller = Controller.new
    plateau    = Plateau.new
    controller.add_navigation_grid(plateau, 5, 5)
    expect(controller.check_location_bounds(plateau)).to eq("Maximum point on x-axis is 5.\nMaximum point on y-axis is 5.")
  end

  #USER STORY 6
  # As a NASA controller,
  # So that I can change a rovers heading,
  # I'd like to be able to spin a rover 90 degrees left and right.
  it 'so a NASA controller can change a rovers heading, rotate left and right' do
    controller = Controller.new
    mars_rover = MarsRover.new
    expect(controller.rotate_right(mars_rover)).to eq('0 0 E')
    expect(controller.rotate_left(mars_rover)).to eq('0 0 N')
  end
end
