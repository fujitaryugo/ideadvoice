class PresentMailer < ApplicationMailer
	def present_send_mail(present)
		@present = present
		@client = @present.client
		@user = @present.user
		@idea = @present.idea
		mail(
			from: 'advoice111@gmail.com',
			to: 'user.email',
			subject: 'MVP受賞のお知らせ'
			)
	end
end
