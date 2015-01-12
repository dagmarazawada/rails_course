class Advertisment < ActiveRecord::Base
	validates :title, presence: true
	validates :description, length: {minimum: 10}
	belongs_to :user
end
