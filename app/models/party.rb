class Party < ApplicationRecord
  # validates :
  belongs_to :user
  has_many :invitations
end
