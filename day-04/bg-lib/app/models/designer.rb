class Designer < ApplicationRecord
  has_and_belongs_to_many :games
  has_one_attached :photo
end
