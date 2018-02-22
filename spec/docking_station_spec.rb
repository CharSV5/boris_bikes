require 'docking_station'
describe DockingStation do
  describe 'releases bike from docking station' do
    it { should respond_to(:release_bike) }
  end
  describe 'gets bike, is bike working?' do
    station = DockingStation.new
    station.bikes.push(1)
    it { expect(station.release_bike).to respond_to (:working?) }
  end
  describe 'docking bike' do
    it { expect(DockingStation.new).to respond_to :dock_bike }
  end
  describe 'can a user dock a bike ' do
    station = DockingStation.new
    station.bikes.clear
    it { expect(station.dock_bike(Bike.new)).to eq station.bikes }
  end
  describe 'no more bikes error message' do
    station = DockingStation.new
    station.bikes.clear
    it { expect {station.release_bike}.to raise_error('Sorry, there are no more bikes.') }
  end
  describe 'cannot except more than 20 bikes' do
    station = DockingStation.new
    it { expect{station.dock_bike(Bike.new )}.to raise_error("Sorry, there aren't any spaces to dock") }
  end
  describe 'user can set capacity' do
    station = DockingStation.new(30)
    it { expect(station.capacity).to eq 30 }
  end
  describe 'default capacity should be 20' do
    station = DockingStation.new
    it { expect(station.capacity).to eq 20 }
  end
  describe 'bike is broken' do
    bike = Bike.new('broken')
    it { expect(bike.broken?).to eq true}
  end
end
