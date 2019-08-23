class Play < ApplicationRecord
  belongs_to :game
  validates :played_on, presence: true
end
