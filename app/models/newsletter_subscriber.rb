class NewsletterSubscriber < ApplicationRecord
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  
  before_create :generate_confirmation_token

  def confirm!
    update(confirmed: true, confirmation_token: nil)
  end
  
  private

  def generate_confirmation_token
    self.confirmation_token = SecureRandom.urlsafe_base64(32)
  end  
end
