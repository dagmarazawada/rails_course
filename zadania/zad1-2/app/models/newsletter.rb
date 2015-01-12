class Newsletter < ActiveRecord::Base
	def send_to_all_users
		User.find_each do |u|
			UserMailer.newsletter(self, u.email).deliver_later
		end
		self.is_sent = true
		self.save
	end
end
