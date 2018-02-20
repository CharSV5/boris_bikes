require 'docking_station'

describe DockingStation do
  describe 'release_bike' do
    it 'release bike from docking station' do
      expect(subject).to respond_to(:release_bike)
    end

    ## One-liner
    # describe 'releases bike from docking station' do
    #   it { should respond_to(:release_bike) }
    # end
  end
end
