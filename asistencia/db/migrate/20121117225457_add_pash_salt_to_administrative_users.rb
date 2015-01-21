class AddPashSaltToAdministrativeUsers < ActiveRecord::Migration
  def change
    add_column :administrative_users, :pass_salt, :string
  end
end
