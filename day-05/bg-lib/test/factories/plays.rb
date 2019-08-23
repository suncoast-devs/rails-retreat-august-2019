FactoryBot.define do
  factory :play do
    game
    played_on { Date.today }
  end
end
