class NotificationMailer < ApplicationMailer
  default from: 'no-reply@yourdomain.com'

  def generic_notice(to_email, subject: 'Notification', body: '')
    @body = body
    mail(to: to_email, subject: subject)
  end
end


