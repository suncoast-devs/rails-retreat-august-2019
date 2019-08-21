FactoryBot.define do
  factory :game do
    title { Faker::App.name }
    min_players { [1, 2].sample }
    max_players { (4..8).to_a.sample }

    trait :untitled do
      title { nil }
    end

    trait :zero_players do
      min_players { 0 }
    end
  end
end
