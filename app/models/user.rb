class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :events
  has_many :requests
  has_many :socials
  has_many :spots, dependent: :destroy, through: :invitations
  has_many :invitations
  has_many :spots, through: :events
  mount_uploader :profile_photo, PhotoUploader
  mount_uploader :coverphoto, PhotoUploader
  enum category: [:sound, :visual, :performance, :helping_hand]

  include PgSearch::Model
  pg_search_scope :search_by_category_and_style_and_skill,
    against: [ :category, :style, :skill ],
    using: {
      tsearch: { prefix: true }
  } # <-- now `superman batm` will return something!

  scope :creatives, -> { where(is_creative: true )}
end
