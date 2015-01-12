class Employee < ActiveRecord::Base
	def to_s
		name+" "+surname
	end

	def full_salary
		12*(salary+commision)
	end

end
