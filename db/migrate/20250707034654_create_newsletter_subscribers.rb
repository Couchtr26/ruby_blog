class CreateNewsletterSubscribers < ActiveRecord::Migration[8.0]
  def change
    create_table :newsletter_subscribers do |t|
      t.string :email
      t.boolean :confirmed

      t.timestamps
    end
  end
end
