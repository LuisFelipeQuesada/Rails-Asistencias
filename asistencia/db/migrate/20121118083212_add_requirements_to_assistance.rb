class AddRequirementsToAssistance < ActiveRecord::Migration
  def change
    add_column :assistances, :requirements, :text
  end
end
