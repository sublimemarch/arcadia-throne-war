class Game < ActiveRecord::Base
  has_many :characters
  has_many :auctions

  validates :title, presence: true
  validates :title, uniqueness: { case_senstive: false }
end
