FactoryGirl.define do
  factory :item do
    closed FFaker::Boolean.maybe
    num_strikes Random.rand(4)
    name Random.rand(9)
    association :auction
  end
end
