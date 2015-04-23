FactoryGirl.define do
  factory :round do
    number Random.rand(100)
    association :auction
  end
end
