class Review < ApplicationRecord
  # relationship to restaurants:
  belongs_to :restaurant
  # validations:
  # A review must belong to a restaurant. (see above relationship)

  # A review must have a content.
  validates :content, presence: true
  # A review must have a rating.
  validates :rating, presence: true
  #   A review’s rating must be a number between 0 and 5.
  #     rails doesn't do ranges -> can't do range: (1..5)
  #     -> greater_than_or_equal_to: 0, less_than_or_equal_to: 5
  #   A review’s rating must be an integer. For example, a review with a rating of 2.5 should be invalid!
  #     the reviews model's rating column was initially set up as a float -> first make a change to the column in the db
  # doesn't work like this:
  # validates :rating,  numericality:
  # { only_integer: true,  greater_than_or_equal_to: 1,
  # less_than_or_equal_to: 5  }
  # better like this:
  validates :rating,  numericality: { only_integer: true }
  validates :rating, inclusion: { in: [0,1,2,3,4,5], allow_nil: false }
end
