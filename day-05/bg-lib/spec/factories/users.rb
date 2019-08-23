FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    bgg_username { Faker::Internet.username }
  end
end
