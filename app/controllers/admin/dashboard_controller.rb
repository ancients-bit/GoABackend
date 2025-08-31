module Admin
  class DashboardController < ApplicationController
    def index
      render json: { message: "Welcome to Admin Dashboard!" }
    end
  end
end
