require 'rails_helper'

RSpec.describe Item, type: :model do
  describe "#Associations" do

    it { should belong_to(:auction) }
  end

  describe "#Validations" do
    subject { FactoryGirl.build(:item) }

    it { should validate_presence_of(:closed) }
    it { should validate_presence_of(:num_strikes) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:auction) }

    it { should validate_numericality_of(:name).is_greater_than_or_equal_to(0) }
    it { should validate_numericality_of(:name).is_less_than_or_equal_to(8) }
  end
end
