class AddDepartmentIdToAssistance < ActiveRecord::Migration
  def change
    add_column :assistances, :department_id, :integer
  end
end
