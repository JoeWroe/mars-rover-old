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
end
