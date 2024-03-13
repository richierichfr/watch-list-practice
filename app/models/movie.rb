class Movie < ApplicationRecord

  attr_accessor :title, :overview, :rating

  has_many :bookmarks
  validates :title, :overview, presence: true
end
