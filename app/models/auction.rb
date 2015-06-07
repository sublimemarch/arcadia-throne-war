class Auction < ActiveRecord::Base

      has_many :items
      has_many :rounds
      belongs_to :game
      has_many :pledges, through: :rounds
      has_many :characters, through: :game

      enum phase: [ :aspect, :gift ]

      validates :phase, presence: true
end
