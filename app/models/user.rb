class User < ApplicationRecord
  validates :name, :type, :expiry_date, presence: true
  validates :email_address, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
