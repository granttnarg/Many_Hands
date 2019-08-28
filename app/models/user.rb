class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :events
  has_many :requests
  has_many :socials
  has_many :spots, through: :events
  mount_uploader :profile_photo, PhotoUploader
  mount_uploader :coverphoto, PhotoUploader
  enum category: [:sound, :visual, :performance, :helping_hand]
end
