class CreateRequirements < ActiveRecord::Migration
  def change
    create_table :requirements do |t|
      t.string :requirement

      t.timestamps
    end
  end
end
