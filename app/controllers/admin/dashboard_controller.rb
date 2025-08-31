module Admin
  class DashboardController < ApplicationController
    before_action :authenticate_admin_user!

    def index
      render json: { message: "Welcome, #{current_admin_user.email}!" }
    end
  end
end
