require 'rails_helper'

RSpec.describe RulesSection, type: :model do
  describe "#Associations" do

    it { should have_many(:contents) }
    it { should belong_to(:table_of_content) }
  end

  describe "#Validations" do
    subject { FactoryGirl.build(:rules_section) }

    it { should validate_presence_of(:title) }
  end
end
