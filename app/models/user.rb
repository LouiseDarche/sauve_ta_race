class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  mount_uploader :photo, PhotoUploader
  include CloudinaryHelper

  has_many :skills
  has_many :bookings, dependent: :destroy

  def smart_avatar_url
    if photo.url.nil?
      "http://fuuse.net/wp-content/uploads/2016/02/avatar-placeholder.png"
    else
      cl_image_path photo, crop: :fit, width: 42, height: 42
    end
  end
end

