class CreateQueries < ActiveRecord::Migration
  def change
    create_table :queries do |t|
      t.string :from
      t.string :to
      t.float :origin_lat
      t.float :origin_lon
      t.float :dest_lat
      t.float :dest_lon

      t.timestamps
    end
  end
end
