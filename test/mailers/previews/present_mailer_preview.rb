# Preview all emails at http://localhost:3000/rails/mailers/present_mailer
class PresentMailerPreview < ActionMailer::Preview
	def present
		present = Present.new(client_id: 5 , user_id: 6 , idea_id: 7 , message: "テスト" )

		PresentMailer.present_send_mail(present)
	end

end
