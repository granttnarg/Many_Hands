class Event < ApplicationRecord
  belongs_to :user
  has_many :spots
  validates :name, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
end
