describe 'user stories' do
  # USER STORY 1
  # As a NASA controller,
  # So that I can explore Mars,
  # I would like to interact with an online Mars Rover.
  it 'so a NASA controller can interact with a Mars Rover, check a Mars Rover is online' do
    controller = Controller.new
    mars_rover = MarsRover.new
    expect(controller.online?(mars_rover)).to eq(true)
  end

  # USER STORY 2
  # As a NASA controller,
  # So that I can explore a particular part of Mars,
  # I would like to be able to land a Mars Rover on the plateau.
  it 'so a NASA controller can land a Mars Rover, instruct a Mars Rover to land' do
    controller   = Controller.new
    mars_rover   = MarsRover.new
    mars_plateau = Plateau.new
    controller.land(mars_rover, mars_plateau)
    expect(mars_plateau.mars_rovers).to_include(mars_rover)
  end
end
