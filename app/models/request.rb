class Request < ApplicationRecord
  belongs_to :spot
  belongs_to :user
  has_one :review
  enum status: [:pending, :confirmed, :rejected]
end
