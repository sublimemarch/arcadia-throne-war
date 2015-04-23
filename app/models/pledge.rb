class Pledge < ActiveRecord::Base

	belongs_to :character
	belongs_to :round
	belongs_to :item

	validates :rank, :value, presence: true
	validates :character, :round, :item, presence: true

end