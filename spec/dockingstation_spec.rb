require "dockingstation.rb"

describe DockingStation do
  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.release_bike).to eq bike
    end
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
  end
end


  it "releases working bikes" do
    #bike = subject.release_bike
    bike = Bike.new
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock_bike).with(1).argument}

  it { is_expected.to respond_to :bike}

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock_bike(bike)).to eq bike
  end

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.bike).to eq bike
  end


end
