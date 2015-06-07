FactoryGirl.define do
  factory :rules_section do
    title "I'm a title, hear me roar"
    association :content, factory: :content
    association :table_of_content, factory: :table_of_content
  end
end
