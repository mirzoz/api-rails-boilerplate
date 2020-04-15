FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { '123456788' }
  end
end
