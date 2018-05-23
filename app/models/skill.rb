class Skill < ApplicationRecord
  belongs_to :user
  mount_uploader :image_url, PhotoUploader


  # validates :name, presence: true
end
