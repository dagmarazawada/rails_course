class UsersController < ActionController::Base
	def index
    	@users = User.all
  	end

	def show
		@username = params[:username]
		@email = params[:email]
	end
end


