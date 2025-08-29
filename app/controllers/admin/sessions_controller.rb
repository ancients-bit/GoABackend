module Admin
  class SessionsController < Devise::SessionsController
    protect_from_forgery with: :exception
    skip_before_action :verify_authenticity_token
    respond_to :json

    def create
      user = AdminUser.find_by(email: params[:admin_user][:email])

      if user&.valid_password?(params[:admin_user][:password])
        sign_in(:admin_user, user)
        render json: {
          status: { code: 200, message: 'Logged in successfully.' },
          data: { id: user.id, email: user.email }
        }, status: :ok
      else
        render json: {
          status: { code: 401, message: 'Invalid email or password.' }
        }, status: :unauthorized
      end
    end

    def destroy
      sign_out(current_admin_user)
      render json: {
        status: { code: 200, message: 'Logged out successfully.' }
      }, status: :ok
    end
  end
end
