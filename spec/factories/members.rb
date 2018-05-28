FactoryBot.define do
  factory :member do
    first_name 'Tom'
    last_name 'Thumb'
    date_of_birth { 30.years.ago }
    gender 'm'
  end
end
