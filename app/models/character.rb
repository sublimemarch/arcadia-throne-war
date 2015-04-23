class Character < ActiveRecord::Base
  belongs_to :user
  belongs_to :game

  validates :pseudonym, :points_spent, presence: true
  validates :pseudonym, uniqueness: { case_sensitive: true }
  validates :user, :game, presence: :true
end
