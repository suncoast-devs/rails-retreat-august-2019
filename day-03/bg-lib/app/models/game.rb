class Game < ApplicationRecord
  has_many :plays
  has_and_belongs_to_many :designers
  has_one_attached :cover_art

  validates :title, presence: true, uniqueness: true
  validates :min_players, numericality: { greater_than: 0 }
  validates :description, length: { minimum: 100 }
  validates :min_age, presence: true

  def designer_names
    designers.map(&:name).to_sentence
  end
end
