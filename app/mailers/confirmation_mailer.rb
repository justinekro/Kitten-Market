class ConfirmationMailer < ApplicationMailer
  default from: "kitten@market.com"

  def sample_email(user)
    @user = user
    mail(to: @user.email, subject: 'Confirmation de votre nouveau compte')
  end
end
