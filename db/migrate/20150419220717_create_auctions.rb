class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|
      t.belongs_to :game

      t.integer :type, null: false
      
      t.boolean :closed, default: false

      t.timestamps null: false
    end
  end
end
