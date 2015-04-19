class Auction < ActiveRecord::Base

      has_many :items
      has_many :rounds

      validates :type, true

end
