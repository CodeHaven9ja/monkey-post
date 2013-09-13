class AdminsController < ApplicationController
	before_action :authenticate_user!
	# before_filter :admin? if !user.admin?
	
	layout "admin"


	def show
	end

	def admin?
		
	end

end
