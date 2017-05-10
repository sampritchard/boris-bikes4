require_relative 'bike'

@bikes = []

class DockingStation
  def release_bike
    Bike.new
  end

  def dock_bike(bike)
    bike
  end

  def bike
    
  end
end
