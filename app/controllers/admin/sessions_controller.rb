module Admin
  class SessionsController < Devise::SessionsController
    respond_to :json

    private

    def respond_with(resource, _opts = {})
      render json: {
        status: { code: 200, message: 'Logged in successfully.' },
        data: {
          id: resource.id,
          email: resource.email
        }
      }, status: :ok
    end

    def respond_to_on_destroy
      if current_admin_user
        render json: {
          status: 200,
          message: "Logged out successfully."
        }, status: :ok
      else
        render json: {
          status: 401,
          message: "User not found."
        }, status: :unauthorized
      end
    end
  end
end
