require './elevator'

RSpec.describe 'Test that the elevator' do
  before(:each) do
    @elevator = Elevator.new(8)
  end

  it 'has basic attributes' do
    expect(@elevator).to be_an_instance_of(Elevator)
    expect(@elevator.max_floors).to eq(8)
  end
  
end
