class AddAssistanceIdToRequirements < ActiveRecord::Migration
  def change
    add_column :requirements, :assistance_id, :integer
  end
end
