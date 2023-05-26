class Review < ApplicationRecord
  # a review has only 1 restaurant
  belongs_to :restaurant

  # A review must have a content, rating
  validates :content, presence: true
  validates :rating, presence: true
  # A review’s rating must be a number between 0 and 5.
  # A review’s rating must be an integer. For example, a review with a rating of 2.5 should be invalid!
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
end

# OR:
# validates :rating, numericality: { only_integer: true }
# validates :rating, inclusion: { in: 0..5 }
