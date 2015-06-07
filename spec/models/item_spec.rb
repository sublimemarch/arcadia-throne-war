require 'rails_helper'

RSpec.describe Item, type: :model do
  describe "#Associations" do

    it { should belong_to(:auction) }
  end

  describe "#Validations" do
    subject { FactoryGirl.build(:item) }

    it { should validate_presence_of(:num_strikes) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:auction) }
  end
end
