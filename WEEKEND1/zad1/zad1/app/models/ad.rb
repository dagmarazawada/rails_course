class Ad < ActiveRecord::Base
	validates :name, presence: true
	validates :description, length: {minimum: 5}
end
