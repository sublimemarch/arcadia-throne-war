class Game < ActiveRecord::Base
  has_many :characters
  has_many :auctions

  validates :title, :status, presence: true
  validates :title, uniqueness: { case_senstive: false }
  validates :status, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 2}
end
