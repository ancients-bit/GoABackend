class ApplicationController < ActionController::API
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def authenticate_admin!
    unless admin_user_signed_in?
      render json: { error: 'Unauthorized' }, status: :unauthorized
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password])
  end
end
