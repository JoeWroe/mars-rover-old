require_relative 'mars_rover'

class Controller

  def online?(vehicle)
    vehicle.online
  end

  def land(vehicle, location)
    vehicle.landed(location)
  end

  def toggle_recording(vehicle)
    vehicle.toggle_record
  end

  def vehicle_position(vehicle)
    vehicle.current_position
  end

end
