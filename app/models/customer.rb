class Customer < ApplicationRecord
  has_one_attached :image
  validates :full_name, presence: true
  validates :phone_number, format: { with: /\A\d{10}\z/, message: "must be 10 digits" }, allow_blank: true
  validates :email_address, format: { with: URI::MailTo::EMAIL_REGEXP }, allow_blank: true
end