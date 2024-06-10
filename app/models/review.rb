class Review < ApplicationRecord
  belongs_to :movie

  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  validates :review_text, presence: true
end
