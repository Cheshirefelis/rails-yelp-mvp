class Review < ApplicationRecord
  # relationship to restaurants:
  belongs_to :restaurant
  # validations:
  # A review must belong to a restaurant.
  # A review must have a content.
  validates :content, presence: true
  # A review must have a rating.
  #   A review’s rating must be a number between 0 and 5.
  #   A review’s rating must be an integer. For example, a review with a rating of 2.5 should be invalid!
  #     the reviews model's rating column was initially set up as a float -> first make a change to the column in the db
  validates :rating, presence: true
end
