class Skill < ApplicationRecord
  belongs_to :user

  validates :price, numericality: { only_integer: true }
  validates :name, presence: true
end
