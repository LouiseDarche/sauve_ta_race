class Review < ApplicationRecord
  belongs_to :skill

  validates :content, length: { minimum: 20 }
end
