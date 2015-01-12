class UserMailer < ApplicationMailer

	def welcome_email(user)
		@user = user
		@message = "hello message"
		mail(to: @user.email, subject: "rails mailer")
	end

	def newsletter(newsletter, email)
		@message = newsletter.content
		mail(to: email, subject: "newsletter")
	end

end
