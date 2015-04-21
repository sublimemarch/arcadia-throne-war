FactoryGirl.define do
  factory :user do
    email FFaker::Internet.email
    name FFaker::NameCS.name
    password FFaker::Internet.password
    type 0
  end
end
