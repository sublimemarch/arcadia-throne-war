class Game < ActiveRecord::Base
  has_many :users
  has_many :auctions

  validates :title, presence: true
  validates :title, uniqueness: { case_senstive: false }
end
