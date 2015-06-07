require 'rails_helper'

RSpec.describe TableOfContent, type: :model do
  describe "#Associations" do

    it { should have_many(:rules_sections)}
  end
end
