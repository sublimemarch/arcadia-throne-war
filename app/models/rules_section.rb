class RulesSection < ActiveRecord::Base

  has_many :contents
  belongs_to :table_of_content

  validate :title, :table_of_content, presence: true
end
