FactoryBot.define do
  factory :account do
    name { "account-#{rand(1..1000)}" }
    country { 'Colombia' }
    account_type { :free }
    observation { '' }
  end
end
