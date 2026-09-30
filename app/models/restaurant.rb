class Restaurant < ApplicationRecord
  # relationship to reviews:
  has_many :reviews

  # validation of attributes (each attribute its own line!)
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true

  # validation for category: A restaurant’s category must belong to this fixed list:
  # ["chinese", "italian", "japanese", "french", "belgian"].
  # which is an array -> %w() or [""]
  validates :category,
    inclusion: { in: %w(chinese italian japanese french belgian),
    message: "%{value} is not acceptable as a restaurant category." }

  # validation: When a restaurant is destroyed, all of its reviews must be destroyed as well.
  # validates
end
