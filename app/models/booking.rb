class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :skill

  validates :user, presence: true
  validates :skill, presence: true
  validates :starts_at, :ends_at, presence: true
end
