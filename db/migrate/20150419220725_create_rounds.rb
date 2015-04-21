class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.belongs_to :auction

      t.integer :number, default: 1

      t.timestamps null: false
    end
  end
end
