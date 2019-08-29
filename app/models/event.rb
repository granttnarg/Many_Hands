class Event < ApplicationRecord
  belongs_to :user
  has_many :spots
  validates :name, presence: true
  mount_uploader :photo, PhotoUploader

  def confirmed_spots_count
    confirmed_spots = spots.select do |spot|
      spot.confirmed?
    end
    return confirmed_spots.count
  end

  def unfilled_spots_count
    return spots.count - confirmed_spots_count
  end
end
