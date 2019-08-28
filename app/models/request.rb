class Request < ApplicationRecord
  belongs_to :spot
  belongs_to :user
  enum status: [:pending, :confirmed, :rejected]
end
