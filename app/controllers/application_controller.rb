class ApplicationController < ActionController::Base
	before_action :authenticate_user!

	def set_current_user
		User.current = current_user
	end
end
