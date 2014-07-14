# When we create a new plane, it should have a "flying" status, thus planes can not be created in the airport.
#
# When we land a plane at the airport, the plane in question should have its status changed to "landed"
#
# When the plane takes of from the airport, the plane's status should become "flying"
require './lib/airplane.rb'

describe Airplane do
 
  let(:airplane) { Airplane.new }


 context 'upon initialisation airplane: ' do
  
  	it 'has a flying status when created' do
  		expect(airplane.status).to eq DEFAULT_STATUS 
  	end
  end
 
 context 'things the plane can do' do

    it 'can takeoff' do
      airplane.takeoff!
      expect(airplane).to be_flying
    end 

    it 'can land' do 
      airplane.land!
      expect(airplane).not_to be_flying
    end 

    it 'should know if it is flying' do 
      airplane.takeoff! 
      expect(airplane.status).to eq 'Flying'
    end

    it 'should know if it is grounded' do 
      airplane.land!
      expect(airplane.status).to eq 'Grounded'
    end
  end 
end 