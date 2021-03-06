class Game < ApplicationRecord
  has_many :plays
  validates :title, presence: true, uniqueness: true
  validates :min_players, numericality: { greater_than: 0 }
end
