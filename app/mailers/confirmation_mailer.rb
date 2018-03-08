class ConfirmationMailer < ApplicationMailer
  default from: "sdanfakha@gmail.com"

  def sample_email(email)
    
    mail(to: email, subject: 'Confirmation de votre nouveau compte')
  end
end




# LAST
# class ConfirmationMailer < ApplicationMailer
#   default from: "kitten@market.com"

#   def sample_email(email)   
#     mail(to: email, subject: 'Confirmation de votre nouveau compte')
#   end
# end



# EXEMPLE

# def sample_email(user)
#     @user = user
#     mail(to: @user.email, subject: 'Sample Email')
#   end
