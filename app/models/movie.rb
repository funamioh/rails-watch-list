class Movie < ApplicationRecord
  validates :title, :overview, presence: true
  validates :title, :overview, uniqueness: true
  # validates :rating, numericality: { greater_than_or_equal_to: 0.0, less_than_or_equal_to: 10.0 }

  has_many :bookmarks
end
