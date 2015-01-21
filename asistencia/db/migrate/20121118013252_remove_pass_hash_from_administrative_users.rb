class RemovePassHashFromAdministrativeUsers < ActiveRecord::Migration
  def up
    remove_column :administrative_users, :pass_hash
  end

  def down
    add_column :administrative_users, :pass_hash, :string
  end
end
