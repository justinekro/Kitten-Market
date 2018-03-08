class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


	before_action :configure_permitted_parameters, if: :devise_controller?
  def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:sign_up).push(:email, :password, :password_confirmation, :firstname, :name, :birthdate, :address, :postal_code, :city, :country)
  	devise_parameter_sanitizer.for(:account_update).push(:email, :password, :password_confirmation, :firstname, :name, :birthdate, :address, :postal_code, :city, :country, :current_password)
  end
end
