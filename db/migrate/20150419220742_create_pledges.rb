class CreatePledges < ActiveRecord::Migration
  def change
    create_table :pledges do |t|
    	t.integer :rank, default: 0, null: false
    	t.belongs_to :character, null: false
    	t.belongs_to :round, null: false
    	t.belongs_to :item, null: false
    	t.integer :value, null: false

      t.timestamps null: false
    end
  end
end
