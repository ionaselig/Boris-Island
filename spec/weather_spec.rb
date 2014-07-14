#randomise weather

require 'weather.rb'

describe Weather do 
	it 'randomly alternates between stormy but predominantly sunny weather' do
		expect weather.random  
	end

	it 'can be stormy' do
	allow(weather).to receive(:randomise).and_return(0)
	expect(weather).to be_stormy
	end

	it 'can be sunny'.to receive(:randomise).and_return(1..3) 
	expect(weather).not_to be_stormy
	end
	
end