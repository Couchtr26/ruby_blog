class NewsletterMailer < ApplicationMailer
  def confirm_email(subscriber)
    @subscriber = subscriber
    @confirmation_url = confirm_newsletter_subscriber_url(@subscriber, token: @subscriber.confirmation_token)
    mail(to: @subscriber.email, subject: "Confirm your newsletter subscription")
  end
end        