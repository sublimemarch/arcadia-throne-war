class CreateRulesSections < ActiveRecord::Migration
  def change
    create_table :rules_sections do |t|

      t.timestamps null: false
    end
  end
end
