class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable, :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable, :validatable

  # Add any custom admin logic or associations here
end
