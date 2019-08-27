class Request < ApplicationRecord
  belongs_to :spot
  enum status: [:pending, :confirmed, :rejected]
end
