
class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title, unique: true, null: false
      t.integer :status, default: 0, null: false

      t.timestamps null: false
    end
  end
end
