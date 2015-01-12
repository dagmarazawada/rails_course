class PeopleController < ApplicationController
	def index
		@people = Person.paginate(page: params[:page])
		render json: @people
	end
end
