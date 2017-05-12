require_relative 'bike'

  class DockingStation
    attr_reader :bike
    attr_reader :capacity

    DEFAULT_CAPACITY = 20

    def initialize(capacity=DEFAULT_CAPACITY)
      @bikes = []
      @capacity = capacity
    end

    def release_bike
      fail 'No bikes available' if empty?
      working_bikes_array = @bikes.select { |bike| bike.working? }
      fail 'All bikes are broken!!!' if working_bikes_array == []
      @bikes.delete(working_bikes_array.pop)
    end

    def dock_bike(bike)
      fail 'Docking station full' if full?
      @bikes << bike
    end

    private
      def full?
        @bikes.count >= @capacity
      end

      def empty?
        @bikes.count == 0
      end
end
