class Review < ApplicationRecord
  belongs_to :skill
  belongs_to :user

  validates :content, length: { minimum: 20 }
end
