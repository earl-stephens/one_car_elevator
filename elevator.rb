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
  end

  def move
    if @queued_floors.empty?
      floor_difference = (@current_floor..@parked_floor)
      floor_difference.each do |floor|
        sleep 5
      end
      @current_floor = @parked_floor
    elsif @queued_floors[0] > @current_floor
      floor_difference = (@current_floor..@queued_floors[0])
      floor_difference.each do |floor|
        sleep 5
      end
      @current_floor = @queued_floors.shift
    else
      @current_floor.downto(@queued_floors[0]) do |floor|
        sleep 5
      end
      @current_floor = @queued_floors.shift
    end
  end
end
