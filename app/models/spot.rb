class Spot < ApplicationRecord
  belongs_to :event
  has_many :requests
  has_many :invitations
  enum category: [:sound, :visual, :performance, :helping_hand]
  validates :category, presence: true


end
