class PeopleController < ApplicationController
  def new
  end

  def add
  	person = Person.new(name: params[:name], surname: params[:surname])
  	if person.save
  		@added_succesfully = true
  	else
  		@added_succesfully = false	
  	end
  end
end
