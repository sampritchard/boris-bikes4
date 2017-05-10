require "dockingstation.rb"

describe DockingStation do
  it { is_expected.to respond_to :release_bike}

  it "releases working bikes" do
    bike = subject.release_bike
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

  it 'will show a specific error message if there are 0 bikes' do
    expect { subject.release_bike }.
      to raise_error('There are no bikes available')
    end

end
