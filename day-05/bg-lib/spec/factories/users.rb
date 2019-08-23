FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    bgg_username { Faker::Internet.username }
    password { "hunter2" }
    password_confirmation { "hunter2" }
  end
end
