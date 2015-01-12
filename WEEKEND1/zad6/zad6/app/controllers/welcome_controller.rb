class WelcomeController < ApplicationController
	def form
	end

	def show
		@name = params[:name]
	end
end