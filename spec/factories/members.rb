FactoryBot.define do
  factory :member do
    first_name { FFaker::Name.first_name }
    last_name { FFaker::Name.first_name }
    date_of_birth { (18..65).to_a.sample.years.ago }
    gender { %w[m f].sample }
  end
end
