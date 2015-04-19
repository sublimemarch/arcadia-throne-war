class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|

      t.timestamps null: false
    end
  end
end
