class Elevator
  attr_reader :max_floors,
              :parked_floor

  def initialize(max_floor_number)
    @max_floors = max_floor_number
    @parked_floor = 1
  end
end
