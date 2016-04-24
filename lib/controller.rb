require_relative 'mars_rover'

class Controller

  def online?(mars_rover)
    mars_rover.online
  end

  def land(vehicle, location)
    vehicle.landed(location)
  end

end
