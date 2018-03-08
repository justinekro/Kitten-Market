# Preview all emails at http://localhost:3000/rails/mailers/checkout_mailer
class CheckoutMailerPreview < ActionMailer::Preview
	def sample_commande_email_preview
    CheckoutMailer.sample_buying(User.first)
  end
end
