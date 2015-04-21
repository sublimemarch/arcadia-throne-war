FactoryGirl.define do
  factory :character do
    pseudonym FFaker::NameCS.first_name
    points_spent 124
    #    association :user, factory: :user
    association :game, factory: :game
  end
end
