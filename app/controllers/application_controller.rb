class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def configure_devise_parameters
  	devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :firstname, :name, :birthdate, :address, :postal_code, :city, :country)}     
  	devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password, :password_confirmation, :firstname, :name, :birthdate, :address, :postal_code, :city, :country, :current_password)}   
  end
end
