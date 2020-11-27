# frozen_string_literal: false

FactoryBot.define do
  factory :user do
    firstname { FFaker::Name.first_name }
    lastname { FFaker::Name.last_name }
    email { FFaker::Internet.email }
    password { '123456788' }
  end
end
