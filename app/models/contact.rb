class Contact < ApplicationRecord
  # Validations
  validates :full_name, :email, :message, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
