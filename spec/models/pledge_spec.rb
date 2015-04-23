require 'rails_helper'

RSpec.describe Pledge, type: :model do
  describe "#Associations" do

    it { should belong_to(:character) }
    it { should belong_to(:round) }
    it { should belong_to(:item) }
  end

  describe "#Validations" do
    subject { FactoryGirl.build(:pledge) }

    it { should validate_presence_of(:rank) }
    it { should validate_presence_of(:value) }
    it { should validate_presence_of(:character) }
    it { should validate_presence_of(:round) }
    it { should validate_presence_of(:item) }
  end
end
