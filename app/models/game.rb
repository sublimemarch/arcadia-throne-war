class Game < ActiveRecord::Base
  has_many :characters
  has_many :auctions

  validates :title, :status, presence: true
  validates :title, uniqueness: { case_senstive: false }
  validates :status, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 2}

  def has_started?
    if status == 0
      return false
    else
      return true
    end
  end

  def start
    self.status = 1
  end

  def mark_not_started
    self.status = 0
  end

  def is_running?
    if status == 1
      return true
    else
      return false
    end
  end

  def mark_complete
    self.status = 2
  end

  def is_complete?
    if status == 2
      return true
    else
      return false
    end
  end

end
