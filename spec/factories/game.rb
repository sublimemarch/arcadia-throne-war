FactoryGirl.define do
  factory :game do
    title FFaker::Lorem.words(3)
    status Random.rand(2)
  end
end
