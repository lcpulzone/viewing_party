class User < ApplicationRecord
  has_many :friendships, dependent: :destroy
  has_many :friends, through: :friendships

  has_many :parties
  has_many :invitations

  validates :email, uniqueness: true, presence: true

  has_secure_password
end
