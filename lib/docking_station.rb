# create new Docking Station class
class DockingStation
  attr_reader :bikes 
  def initialize
    @bikes = []
  end
  def release_bike
   Bike.new
  end
  def dock_bike(bike)
    @bikes.push(bike)
  end
end

# create new Bike class
class Bike
  def working?
  end
end
