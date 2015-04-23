FactoryGirl.define do
  factory :pledge do
    rank Random.rand(15)
    value Random.rand(150)
    association :character
    association :round
    association :item
  end
end
