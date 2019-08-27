class Spot < ApplicationRecord
  belongs_to :event
  has_many :requests
  has_many :invitations
end
