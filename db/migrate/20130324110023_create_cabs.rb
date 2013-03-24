class CreateCabs < ActiveRecord::Migration
  def change
    create_table :cabs do |t|
      t.string :name
      t.boolean :company
      t.string :reg
      t.boolean :verified
      t.string :phone_number

      t.timestamps
    end
  end
end
