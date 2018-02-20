class DockingStation

  def release_bike
    Bike.new
  end

end

class Bike

  def working?
    puts "It is working"
  end

end

docking_station = DockingStation.new
bike = docking_station.release_bike.working?
