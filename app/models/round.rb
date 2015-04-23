class Round < ActiveRecord::Base
      has_many :pledges
      belongs_to :auction
      has_many :characters, through: :pledges
      has_many :items, through: :pledges

      validates :number, :auction, presence: true

end
