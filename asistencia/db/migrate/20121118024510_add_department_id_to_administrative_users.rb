class AddDepartmentIdToAdministrativeUsers < ActiveRecord::Migration
  def change
    add_column :administrative_users, :department_id, :integer
  end
end
