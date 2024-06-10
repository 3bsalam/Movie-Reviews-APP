class Movie < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :title, presence: true
  validates :release_year, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :description, :director, :actor, presence: true
end
