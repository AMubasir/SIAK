class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:full_name, :email, :password, 
  															   :password_confirmation, :remember_me,
  															   :address, :grade, :semester, :place_of_birth,
  															   :date_of_birth, :phone, :gender, :religion) }
  	devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:full_name, :email, :password, 
  															   :password_confirmation, :current_password, :remember_me,
  															   :address, :grade, :semester, :place_of_birth,
  															   :date_of_birth, :phone, :gender, :religion) }
  end

  def after_sign_in_path_for(resource)
    detail_users_path
  end

end
