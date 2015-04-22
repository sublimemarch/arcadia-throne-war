FactoryGirl.define do
  factory :user do
    email FFaker::Internet.email
    name FFaker::NameCS.name
    password FFaker::Internet.password
    user_type 0
  end
end
