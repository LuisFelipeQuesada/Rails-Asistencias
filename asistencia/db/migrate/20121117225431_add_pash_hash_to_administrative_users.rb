class AddPashHashToAdministrativeUsers < ActiveRecord::Migration
  def change
    add_column :administrative_users, :pass_hash, :string
  end
end
