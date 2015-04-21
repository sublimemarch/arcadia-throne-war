require 'rails_helper'

RSpec.describe User, type: :model do

  describe "#Associations" do

    it { should have_many(:characters) }
  end

  describe "#Validations" do
    subject { FactoryGirl.build (:user) }

    it { should validate_presence_of(:email) }

    it { should validate_presence_of(:name) }

    it { should validate_presence_of(:password_hash) }

    it { should validate_presence_of(:type) }

    it { should validate_uniqueness_of(:email) }

    it { should validate_uniqueness_of(:name) }
  end

  describe "#Authenticate" do
    let(:user) { create(:user, password: 'abc') }

    it 'returns password hash when calling password' do
      expect(user.email).to match(/\$2a/)
    end

    it 'returns a user object on correct password' do
      expect(User.authenticate({email: user.email, password: 'abc'})).to be_a User
    end

    it 'returns nil on incorrect password' do
      expect(User.authenticate({email: user.email, password: 'abcd'})).to be_a User
    end
  end
end
