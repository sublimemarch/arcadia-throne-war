class Item < ActiveRecord::Base

	belongs_to :auction

	validates :closed, :num_strikes, :name, :auction, presence: true
	validates :name, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 8}
end
