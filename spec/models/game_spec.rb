require 'rails_helper'

RSpec.describe Game, type: :model do
  describe 'Validations' do
    subject {FactoryGirl.build(:game)}
    
    it {should validate_presence_of(:title)}
    it {should validate_uniqueness_of(:title)}
  end
end
