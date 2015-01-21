class AddRequirementIdToAssistance < ActiveRecord::Migration
  def change
    add_column :assistances, :requirement_id, :integer
  end
end
