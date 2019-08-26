class Spot < ApplicationRecord
  belongs_to :event
  has_many :requests
end
