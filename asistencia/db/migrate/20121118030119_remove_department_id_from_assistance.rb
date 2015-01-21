class RemoveDepartmentIdFromAssistance < ActiveRecord::Migration
  def up
    remove_column :assistances, :department_id
  end

  def down
    add_column :assistances, :department_id, :integer
  end
end
