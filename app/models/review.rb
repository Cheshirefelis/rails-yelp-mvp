class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: truw
end
