# create new Docking Station class
class DockingStation
  def release_bike
    Bike.new
  end
end

# create new Bike class
class Bike
  def working?
  end
end

docking_station = DockingStation.new
bike = docking_station.release_bike.working?
