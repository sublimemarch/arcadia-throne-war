class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :pseudonym, unique: true, null: false

      t.belongs_to :user
      t.belongs_to :game

      t.integer :points_spent, default: 0, null: false

      t.timestamps null: false
    end
  end
end
