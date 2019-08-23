class Play < ApplicationRecord
  belongs_to :game
  belongs_to :user
  validates :played_on, presence: true
end
