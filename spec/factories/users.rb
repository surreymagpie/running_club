FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@example.com" }
    password 'password'

    trait :confirmed do
      after(:create, &:confirm)
    end
  end
end
