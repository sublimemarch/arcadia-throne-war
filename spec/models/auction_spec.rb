require 'rails_helper'

RSpec.describe Auction, type: :model do
  describe "#Associations" do

    it { should have_many(:rounds) }
    it { should have_many(:items) }
    it { should belong_to(:game) }
    it { should have_many(:pledges).through(:rounds)}
    it { should have_many(:characters).through(:game)}
  end

  describe "#Validations" do
    subject { FactoryGirl.build (:auction) }

    it { should validate_presence_of(:phase) }
    it do
      should validate_numericality_of(:phase).is_greater_than_or_equal_to(0)
    end
    it do
      should validate_numericality_of(:phase).is_less_than_or_equal_to(1)
    end
  end
end
