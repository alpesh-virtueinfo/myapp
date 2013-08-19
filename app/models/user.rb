class User < ActiveRecord::Base
    	
	def get_information
		"Name: #{self.first_name} #{self.last_name} City: #{self.city} Address: #{self.address}"
	end
	
	def get_data
	    "Name: #{self.first_name} #{self.last_name} City: #{self.city} Address: #{self.address}"
	end
	
end
