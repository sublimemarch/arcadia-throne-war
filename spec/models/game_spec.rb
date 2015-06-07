require 'rails_helper'

RSpec.describe Game, type: :model do
  describe 'Validations' do
    subject {FactoryGirl.build(:game)}

    it {should validate_presence_of(:title)}
    it {should validate_uniqueness_of(:title)}
    it {should validate_presence_of(:status)}
    it { should validate_numericality_of(:status).is_greater_than_or_equal_to(0) }
    it { should validate_numericality_of(:status).is_less_than_or_equal_to(2) }
  end
end
