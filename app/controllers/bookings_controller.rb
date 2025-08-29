class BookingsController < ApplicationController
  # GET /bookings
  def index
    bookings = Booking.order(created_at: :desc)
    render json: bookings
  end

  # POST /bookings
  def create
    # Set status to STATUS_PENDING for all new bookings (user cannot override)
    booking = Booking.new(booking_params)
    booking.status = Booking::STATUS_PENDING

    if booking.save
      render json: { message: 'Booking submitted successfully.', data: booking }, status: :created
    else
      render json: { error: booking.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bookings/:id
  def update
    booking = Booking.find(params[:id])

    if booking.update(booking_update_params)
      render json: { message: 'Booking updated.', data: booking }
    else
      render json: { error: booking.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    permitted = [
      :name,
      :email,
      :phone_number,
      :organisation,
      :number_of_persons,
      :date_of_booking,
      :alternate_date,
      :inquiry,
      :service
    ]
    # Accept both nested and flat JSON payloads
    if params[:booking].is_a?(ActionController::Parameters)
      params.require(:booking).permit(*permitted)
    else
      params.permit(*permitted)
    end
  end

  def booking_update_params
    params.require(:booking).permit(:status)
  end
end
