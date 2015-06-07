FactoryGirl.define do
  factory :game do
    title FFaker::Lorem.words(3)
    status 0
  end
end
