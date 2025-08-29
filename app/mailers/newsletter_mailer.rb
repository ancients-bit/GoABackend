class NewsletterMailer < ApplicationMailer
  default from: 'no-reply@yourdomain.com'

  def weekly_newsletter(subscriber, subject: 'Weekly Newsletter')
    @subscriber = subscriber
    mail(to: @subscriber.email, subject: subject)
  end
end


