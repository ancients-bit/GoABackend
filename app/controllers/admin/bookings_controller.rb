module Admin
  class BookingsController < ApplicationController
    before_action :authenticate_admin_user!

    def index
      bookings = Booking.order(created_at: :desc)
      render json: bookings
    end

    def update
      booking = Booking.find(params[:id])
      booking.status = :approved

      if booking.save
        BookingMailer.confirmation_email(booking).deliver_later
        render json: { message: 'Booking approved and confirmation sent.', data: booking }, status: :ok
      else
        render json: { error: booking.errors.full_messages }, status: :unprocessable_entity
      end
    end
  end
end
