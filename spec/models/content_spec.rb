require 'rails_helper'

RSpec.describe Content, type: :model do
  describe "#Associations" do

    it { should belong_to(:rules_section) }
  end

  describe "#Validations" do
    subject { FactoryGirl.build(:content) }

    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:backup) }
    it { should validate_presence_of(:order) }
    it { should validate_presence_of(:html_text) }
    it { should validate_presence_of(:title) }
  end
end
