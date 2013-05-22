class ChangeFirstnameToNameInSignatures < ActiveRecord::Migration
  def up
    rename_column :signatures, :firstname, :name
  end

  def down
    rename_column :signatures, :name, :firstname
  end
end
