class CreateSignatures < ActiveRecord::Migration
  def change
    create_table :signatures do |t|
      t.string :firstname
      t.string :lastname
      t.string :email

      t.timestamps
    end
  end
end
