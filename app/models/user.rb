class User < ApplicationRecord
  has_many :friendships
  has_many :friendships, foreign_key: :friend_id, dependent: :destroy
  has_many :friends, through: :friendships

  has_many :parties
  has_many :invitations

  validates :email, uniqueness: true, presence: true

  has_secure_password
end
