class Elevator
  attr_reader :max_floors,
              :parked_floor,
              :queued_floors,
              :current_floor

  def initialize(max_floor_number)
    @max_floors = max_floor_number
    @parked_floor = 1
    @queued_floors = []
    @current_floor = 1
  end

  def call(floor)
    @queued_floors << floor
    # move
  end

  def move
    if @queued_floors.empty?
      @current_floor = @parked_floor
    else
      @current_floor = @queued_floors.shift
    end
  end
end
