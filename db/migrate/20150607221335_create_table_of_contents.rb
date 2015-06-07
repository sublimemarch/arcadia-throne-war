class CreateTableOfContents < ActiveRecord::Migration
  def change
    create_table :table_of_contents do |t|

      t.timestamps null: false
    end
  end
end
