require 'rails_helper'

RSpec.describe Character, type: :model do
  describe 'Associations' do
    it { should belong_to(:user) }
    it { should belong_to(:game) }

  end

  describe 'Validations' do
    subject { FactoryGirl.build(:character) }

    it { should validate_presence_of(:pseudonym) }
    it { should validate_uniqueness_of(:pseudonym) }
    it { should validate_presence_of(:game) }
    it { should validate_presence_of(:user) }
  end
end
