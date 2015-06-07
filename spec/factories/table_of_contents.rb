FactoryGirl.define do
  factory :table_of_content do
    association :rules_section, factory: :rules_section
  end
end
