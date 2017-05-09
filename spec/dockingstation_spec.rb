require "dockingstation.rb"

describe DockingStation do
  it "should be able to responde to release_bike" do
    expect(subject).to respond_to release_bike
  end
end
