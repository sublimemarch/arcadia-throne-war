class Item < ActiveRecord::Base

	belongs_to :auction

	enum name: [ :battle, :cunning, :destiny, :ego, :flesh ]

	validates :num_strikes, :name, :auction, presence: true
	validates :closed, :inclusion => { :in => [true,false] }
	validates :name, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 8}
end
