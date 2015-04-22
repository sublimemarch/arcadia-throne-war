class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, unique: true, null: false
      t.string :name, null: false, unique: true
      t.string :password_hash, null: false

      t.integer :user_type, null: false

      t.timestamps null: false
    end
  end
end
