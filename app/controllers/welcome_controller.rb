class WelcomeController < ApplicationController
    def index
		user = User.find(2)
		@user = user.get_information
		@aa = user.get_data
		
		userData = User.new
		@userData = userData.get_data
	end
	def client
	    
	end
end
