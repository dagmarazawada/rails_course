class PatientsController < ApplicationController
  def show
  	@patient = Patient.find(params[:id])
  end

  def new
  	@patient = Patient.new
  end

  def create
  	@patient = Patient.new(patient_params)
  	if @patient.save
  		redirect_to patient_path(@patient)
  		# redirect_to @patient
  	else
  		render 'new'
  		# wyświetla widok new, nie przeładowuje strony
  	end
  end

  private
  def patient_params
  	params.require(:patient).permit(:name,:surname)
  end
end
