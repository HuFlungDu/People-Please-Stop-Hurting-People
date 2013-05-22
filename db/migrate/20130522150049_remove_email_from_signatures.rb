class RemoveEmailFromSignatures < ActiveRecord::Migration
  def up
    remove_column :signatures, :email
  end

  def down
    add_column :signatures, :email, :string
  end
end
