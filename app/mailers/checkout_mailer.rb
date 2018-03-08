class CheckoutMailer < ApplicationMailer
  default from: "sdanfakha@gmail.com"

  def sample_buying(email)
    mail(to: email, subject: 'Confirmation de votre commande')
  end
  
end

