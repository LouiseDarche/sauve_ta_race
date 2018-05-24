class Skill < ApplicationRecord
  belongs_to :user
  has_many :bookings
  mount_uploader :photo, PhotoUploader


  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch
  pg_search_scope :search_by_name_and_description_and_category_and_location,
  against: [:name, :description, :category, :location],
  using: {
    tsearch: {prefix: true }
  }
  # validates :name, presence: true

end
