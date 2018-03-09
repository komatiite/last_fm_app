class Track < ApplicationRecord
  validates :name, presence: true
  belongs_to :artist
end
