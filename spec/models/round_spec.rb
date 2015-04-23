require 'rails_helper'

RSpec.describe Round, type: :model do
  describe "#Associations" do

    it { should belong_to(:auction) }
    it { should have_many(:pledges) }
    it { should have_many(:items).through(:pledges) }
    it { should have_many(:characters).through(:pledges) }
  end

  describe "#Validations" do
    subject { FactoryGirl.build(:round) }

    it { should validate_presence_of(:number) }
    it { should validate_presence_of(:auction) }
  end
end
