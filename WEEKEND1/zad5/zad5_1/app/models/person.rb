class Person < ActiveRecord::Base
	validates :name, :surname, presence: true
end
