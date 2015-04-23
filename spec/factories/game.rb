FactoryGirl.define do
  factory :game do
    title FFaker::Lorem.words(3)
  end
end
