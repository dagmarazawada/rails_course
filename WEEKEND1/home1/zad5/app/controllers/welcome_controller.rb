class WelcomeController < ApplicationController
	def form
	end

	def show
		@name = params[:name]
		@surname = params[:surname]
		@sex = params[:sex]
		@computer_time = params[:computer_time]
		@age = params[:age]
	end
end
