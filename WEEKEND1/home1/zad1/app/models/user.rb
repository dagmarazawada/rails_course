class User < ActiveRecord::Base
	validates :username, :password, presence: true
	validates :email, uniqueness: true
	has_many :advertisments
end
