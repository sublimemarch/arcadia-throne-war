FactoryGirl.define do
  factory :auction do
    phase Random.rand(2)
  end
end
