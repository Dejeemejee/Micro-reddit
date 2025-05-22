class User < ApplicationRecord
  has_many :posts
  has_many :comments
  validates :name, presence: true,  length: {minimum: 3}, uniqueness: true
  validates :age, presence: true, numericality: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true, length: {minimum: 6}
end