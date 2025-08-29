class SubscribersController < ApplicationController
  # If you want to allow requests from localhost:4000 (your frontend)
  # skip_before_action :verify_authenticity_token # <-- Uncomment ONLY for API-only apps, not regular Rails!

  def create
    @subscriber = Subscriber.new(subscriber_params)
    if @subscriber.save
      render json: { success: true, subscriber: @subscriber }, status: :created
    else
      render json: { errors: @subscriber.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def subscriber_params
    if params[:subscriber].is_a?(ActionController::Parameters)
      params.require(:subscriber).permit(:email)
    else
      params.permit(:email)
    end
  end
end
