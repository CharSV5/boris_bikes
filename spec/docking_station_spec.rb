require "docking_station"

describe DockingStation do

  it 'release bike from docking station' do
    expect(subject).to respond_to(:release_bike)
  end

end
