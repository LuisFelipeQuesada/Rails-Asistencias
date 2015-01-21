class RemoveRequirementIdFromAssistance < ActiveRecord::Migration
  def up
    remove_column :assistances, :requirement_id
  end

  def down
    add_column :assistances, :requirement_id, :integer
  end
end
