class AddAssistanceTypeToAssistance < ActiveRecord::Migration
  def change
    add_column :assistances, :assistance_type, :integer
  end
end
