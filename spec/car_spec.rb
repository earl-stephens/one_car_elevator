require './elevator'

RSpec.describe 'Test that the elevator' do
  before(:each) do
    @elevator = Elevator.new(8)
  end

  it 'has basic attributes' do
    expect(@elevator).to be_an_instance_of(Elevator)
    expect(@elevator.max_floors).to eq(8)
    expect(@elevator.queued_floors).to eq([])
  end

  context 'car starts on first floor' do
    it 'goes to floor that calls it' do
      expect(@elevator.parked_floor).to eq(1)
      expect(@elevator.current_floor).to eq(@elevator.parked_floor)

      @elevator.call(4)

      expect(@elevator.queued_floors).to eq([4])

      @elevator.move

      expect(@elevator.current_floor).to eq(4)
      expect(@elevator.queued_floors).to eq([])

      @elevator.call(2)

      expect(@elevator.queued_floors).to eq([2])

      @elevator.move

      expect(@elevator.current_floor).to eq(2)
      expect(@elevator.queued_floors).to eq([])

      @elevator.move

      expect(@elevator.current_floor).to eq(@elevator.parked_floor)
    end
  end
end
