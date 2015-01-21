class CreateAdministrativeUsers < ActiveRecord::Migration
  def change
    create_table :administrative_users do |t|
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
