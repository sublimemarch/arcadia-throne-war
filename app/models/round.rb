class Round < ActiveRecord::Base
      has_many :pledges
      belongs_to :auction
      has_many :characters, through: :pledges
      has_many :items, through:w :pledges     

      validates :number, presence: true

end
