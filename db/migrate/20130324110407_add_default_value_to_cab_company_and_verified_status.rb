class AddDefaultValueToCabCompanyAndVerifiedStatus < ActiveRecord::Migration
  #def change
  #end

  def up
    change_column :cabs, :company, :boolean, :default => false
    change_column :cabs, :verified, :boolean, :default => false
  end

  def down
    change_column :cabs, :company, :boolean, :default => nil
    change_column :cabs, :verified, :boolean, :default => nil
  end
end
