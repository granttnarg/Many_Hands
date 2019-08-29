class Spot < ApplicationRecord
  belongs_to :event
  has_many :requests
  has_many :users, through: :invitations, source: :spots
  has_many :invitations
  enum category: [:sound, :visual, :performance, :helping_hand]
  validates :category, presence: true

  def confirmed?
    self.requests.where(status: "confirmed").present?
  end
end
