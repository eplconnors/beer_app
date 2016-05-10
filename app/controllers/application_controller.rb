class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :authenticate_any!, except: [:index]
  

  before_action :configure_permitted_parameters, if: :devise_controller?
  protected

  def configure_permitted_parameters

    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation,
      :name, :username, :latitude, :longitude, :avatar, :birthday, :bio, :address) }

    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password, :password_confirmation,
      :current_password, :name, :username, :latitude, :longitude, :avatar, :birthday, :bio, :address) }

end


private
def authenticate_any!
    if user_signed_in?
        true
    else
        authenticate_business_user!
    end
end

end
