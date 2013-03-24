class CreateFares < ActiveRecord::Migration
  def change
    create_table :fares do |t|
      t.references :cab
      t.references :query
      t.boolean :verified
      t.string :reporter
      t.string :phone_number
      t.money :price
      t.timestamps
    end
    add_index :fares, :cab_id
    add_index :fares, :query_id
  end
end
