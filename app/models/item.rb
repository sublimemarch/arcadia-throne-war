class Item < ActiveRecord::Base

	belongs_to :auction

	enum name: [ :battle, :cunning, :destiny, :ego, :flesh, :command, :change, :illusion, :guttermagic ]

	validates :num_strikes, :name, :auction, presence: true
	validates :closed, :inclusion => { :in => [true,false] }
end
