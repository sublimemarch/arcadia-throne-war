class Content < ActiveRecord::Base

  belongs_to :rules_section

  validates :author, :backup, :order, :html_text, :rules_section, :title, presence: true
end
