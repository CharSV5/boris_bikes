# create new Docking Station class
class DockingStation
  attr_reader :bikes
  def initialize(number_of_bikes = 0)
    @bikes = []
    @capacity = 20
    number_of_bikes.times {@bikes.push(Bike.new)}
  end

  def release_bike
    if @bikes.empty?
      raise "Sorry, there are no more bikes."
    else
      Bike.new
    end
  end

  private
  def full?
    @bikes.length >= @capacity
  end


  def dock_bike(bike)
    if full?
      raise "Sorry, there aren't any spaces to dock"
    else
      @bikes.push(bike)
    end
  end
end

# create new Bike class
class Bike
  def working?
  end
end
