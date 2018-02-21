require 'docking_station'
describe DockingStation do
  # describe 'release_bike' do
  #   it 'release bike from docking station' do
  #     expect(subject).to respond_to(:release_bike)
  #   end

    ## One-liner
    describe 'releases bike from docking station' do
      it { should respond_to(:release_bike) }
    end
    describe "gets bike, is bike working?" do
      it { expect(DockingStation.new.release_bike).to respond_to(:working?)}
    end
  describe "docking bike" do
    it { expect(DockingStation.new).to respond_to (:dock_bike)}
  end
  describe "can a user dock a bike" do
    station = DockingStation.new
    it { expect(station.dock_bike(station.release_bike)).to eq (station.bikes) }
  end

end
