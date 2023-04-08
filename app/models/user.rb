class User < ApplicationRecord
  # attr_accessor :email, :password, :username
  has_many :posts
  has_many :comments

  validates :username, presence: true, uniqueness: true, length: { minimum: 5 }
  validates :email, presence: { message: "Please provide an email address" }, format: { with: URI::MailTo::EMAIL_REGEXP, message: "Please provide a valid email address" }
  validates :password, presence: true, length: { minimum: 8 }
end
