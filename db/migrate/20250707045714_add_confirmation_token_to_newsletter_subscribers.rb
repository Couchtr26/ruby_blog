class AddConfirmationTokenToNewsletterSubscribers < ActiveRecord::Migration[8.0]
  def change
    add_column :newsletter_subscribers, :confirmation_token, :string
  end
end
