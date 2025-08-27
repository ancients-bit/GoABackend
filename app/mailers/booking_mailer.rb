class BookingMailer < ApplicationMailer
  default from: 'no-reply@yourdomain.com'

  def confirmation_email(booking)
    @booking = booking
    mail(to: @booking.email, subject: 'Your Booking is Confirmed')
  end
end
