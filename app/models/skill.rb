class Skill < ApplicationRecord
  belongs_to :user
  mount_uploader :image_url, PhotoUploader


  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  # validates :name, presence: true
end
