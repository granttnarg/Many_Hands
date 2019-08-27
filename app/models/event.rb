class Event < ApplicationRecord
  belongs_to :user
  has_many :spots
  validates :name, presence: true

end
