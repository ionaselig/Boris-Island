require_relative 'airplane'
require_relative 'weather'

class Airport
include Weather

DEFAULT_CAPACITY = 10 

	def initialize (capacity: DEFAULT_CAPACITY, airplanes: [])
		#self.capacity = 4
		@airport  = []
		@capacity = capacity 
	end 

	def airairplanes
		@airplanes ||= []
	end

	def capacity
		DEFAULT_CAPACITY
	end

	# def take_off do
	# 	Airplane.new
	# end

	def land! do
	raise 'Airport at capacity, go round' if full? 
	raise 'Can\'t you see it\'s too stormy to land' if stormy? 
    	airplanes << airplane 
	end

    def clear_takeoff(airplane)
    	raise 'stormy weather grounding all aircraft' if stormy?
    	airplanes.delete(airplane)
    end

    def full?
    	airplanes.count == capacity 
    end

end