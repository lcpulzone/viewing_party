class Invitation < ApplicationRecord
  # validates :
  belongs_to :party
  belongs_to :user
end
