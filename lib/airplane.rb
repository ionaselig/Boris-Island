class Airplane

DEFAULT_STATUS = 'Grounded'

	def initialize(status: DEFAULT_STATUS) #(flight_status)
		#@flying = true
		@status = status
	end

	def flying?
		@flying
	end

	def land!
		@flying = false
		self
	end

	def take_off!
		@flying = true
		self
	end 

	def status
		return 'Flying' if flying? 
		'Grounded'
	end 
end