class Contact < ApplicationRecord
  # Validations
  validates :full_name, presence: true
  validates :email, presence: true
  validates :message, presence: true
end
