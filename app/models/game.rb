class Game < ActiveRecord::Base
  has_many :characters
  has_many :auctions

  enum status: [ :preparing, :started, :complete ]

  validates :title, :status, presence: true
  validates :title, uniqueness: { case_senstive: false }

end
