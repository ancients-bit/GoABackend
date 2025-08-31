module Admin
  class SessionsController < Devise::SessionsController
    respond_to :json

    def create
      # Handle both Devise format and custom format
      email = extract_email
      password = extract_password

      user = AdminUser.find_by(email: email)

      if user&.valid_password?(password)
        sign_in(:admin_user, user)
        render json: {
          status: { code: 200, message: 'Logged in successfully.' },
          data: { 
            id: user.id, 
            email: user.email,
            token: request.env['warden-jwt_auth.token']
          }
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

    private

    def extract_email
      # Handle both formats:
      # 1. Devise format: params[:admin_user][:email]
      # 2. Custom format: params[:admin][:email]
      params.dig(:admin_user, :email) || params.dig(:admin, :email)
    end

    def extract_password
      # Handle both formats:
      # 1. Devise format: params[:admin_user][:password]
      # 2. Custom format: params[:admin][:password]
      params.dig(:admin_user, :password) || params.dig(:admin, :password)
    end
  end
end
