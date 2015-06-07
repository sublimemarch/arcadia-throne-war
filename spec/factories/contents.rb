FactoryGirl.define do
  factory :content do
    title FFaker::NameCS.first_name
    author FFaker::NameCS.first_name
    backup "current"
    order 1
    html_text FFaker::Lorem.paragraph

    association :rules_section, factory: :rules_section
  end
end
