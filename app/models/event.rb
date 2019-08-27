class Event < ApplicationRecord
  belongs_to :user
  has_many :spots
  validates :name, presence: true
  mount_uploader :photo, PhotoUploader
end
