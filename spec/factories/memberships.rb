FactoryBot.define do
  factory :membership do
    user
    expires_at '2018-05-27'
    active true

    after :build do |membership|
      membership.members = build_stubbed_list(:member, 3)
    end
  end
end
