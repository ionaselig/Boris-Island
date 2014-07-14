require 'airport'
require 'airairplane'
require 'weather'
 
# A airplane currently in the airport can be requested to take off.
#
# No more airairplanes can be added to the airport, if it's full.
# It is up to you how many airairplanes can land in the airport and how that is impermented.
#
# If the airport is full then no airairplanes can land
describe Airport do

DEFAULT_CAPACITY = 10
  let(:boris_island)  { Airport.new }
  let(:airplane)         { double :airairplane } 
  
  context 'traffic control: take off and landing' do 

    before(:each) do
      allow(airport).to receive(:stormy?).and_return(false)
    end

      it 'should be empty when created' do 
        expect(airport.airairplanes).to be_empty
      end

      it "should initialise with DEFAULT_CAPACITY" do
        expect(airport.capacity).to eq 10
      end

      it 'should land a airplane' do
        airport.land(airplane)
        expect(airport.airairplanes).to eq([airplane])
      end

      it 'should clear an airairplane for takeoff' do 
        airport.clear_takeoff(airplane)
        expect(airport.airairplanes).to be_empty
      end

      it 'should not land a airplane when airport at capacity' do
        50.times{airport.land(airplane)}
        expect{ airport.land(airplane) }.to raise_error(RuntimeError)
      end
    
  end 

  context 'bloody weather' do 
    
    before(:each) do
      allow(airport).to receive(:stormy?).and_return(true)

    end 

      it 'a airplane cannot take off when there is a storm brewing' do
        expect{boris_island.clear_takeoff(airplane)}.to raise_error(RuntimeError)
      end
        
      it 'a airplane cannot land in the middle of a storm' do
        expect{airport.land(airplane)}.to raise_error(RuntimeError)
      end
  end
end

    
    # Include a weather condition using a module.
    # The weather must be random and only have two states "sunny" or "stormy".
    # Try and take off a airplane, but if the weather is stormy, the airplane can not take off and must remain in the airport.
    # 
    # This will require stubbing to stop the random return of the weather.
    # If the airport has a weather condition of stormy,
    # the airplane can not land, and must not be in the airport
 

 
# grand final
# Given 6 airairplanes, each airplane must land. When the airport is full, every airplane must take off again.
# Be careful of the weather, it could be stormy!
# Check when all the airairplanes have landed that they have the right status "landed"
# Once all the airairplanes are in the air again, check that they have the status of flying!
# describe "The gand finale (last spec)" do
#   it 'all airairplanes can land and all airairplanes can take off' do
#   end
# end