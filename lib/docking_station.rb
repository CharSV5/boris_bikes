# create new DockingStation class
class DockingStation
  def release_bike
   Bike.new
  end
end

# create new Bike class
class Bike
  def working?
    puts 'It is working'
  end
end
