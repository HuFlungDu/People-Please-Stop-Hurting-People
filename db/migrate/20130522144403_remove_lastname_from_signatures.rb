class RemoveLastnameFromSignatures < ActiveRecord::Migration
  def up
    remove_column :signatures, :lastname
  end

  def down
    add_column :signatures, :lastname, :string
  end
end
