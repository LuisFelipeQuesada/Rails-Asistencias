class CreateAssistanceTypes < ActiveRecord::Migration
  def change
    create_table :assistance_types do |t|
      t.string :type

      t.timestamps
    end
  end
end
