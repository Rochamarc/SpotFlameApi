class AlterTablePasswordDigest < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :pasword_digest
    add_column :users, :password_digest, :string
  end
end
