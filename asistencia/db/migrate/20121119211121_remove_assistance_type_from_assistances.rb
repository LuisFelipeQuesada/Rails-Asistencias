class RemoveAssistanceTypeFromAssistances < ActiveRecord::Migration
  def up
    remove_column :assistances, :assistance_type
  end

  def down
    add_column :assistances, :assistance_type, :integer
  end
end
