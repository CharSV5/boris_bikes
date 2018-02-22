# create new Docking Station class
class DockingStation
  attr_reader :bikes, :capacity, :hired_bike
  Default_Capacity = 20
  def initialize(capacity = Default_Capacity)
    @capacity = capacity
    @bikes = []
    capacity.times {@bikes.push(Bike.new)}
  end

  def release_bike
    if @bikes.empty?
      raise "Sorry, there are no more bikes."
    else
      @hired_bike = bikes.shift
    end
  end

  def dock_bike(bike)
    if full?
      raise "Sorry, there aren't any spaces to dock"
    else
      @bikes.push(bike)
    end
  end

  private
  def full?
    @bikes.length >= Default_Capacity
  end
end

# create new Bike class
class Bike
  def initialize(working_order = 'working')
    @working_order = working_order
  end
  def working?
    @working_order == 'working'
  end

  def broken?
    @working_order == 'broken'
  end
  def report_broken
    @working_order = 'broken'
  end
end
