class User < ApplicationRecord
  has_secure_password
  has_many :topics
  has_many :replies

	validates :phone, presence: true, uniqueness: true
  validates :name, presence: true
end
