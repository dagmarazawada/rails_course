class Employee < ActiveRecord::Base
	def to_s
		name+" "+surname
	end

	def full_salary
		12*(salary+commision)
	end

#	def self.highest_salary
#		Employee.where(salary: Employee.maximum(:salary)).first
#	end

	scope :highest_salary, -> { where(salary: Employee.maximum(:salary)).first}

	#scope i metoda statyczna to to samo tylko scope ładniejszy zapis

end
