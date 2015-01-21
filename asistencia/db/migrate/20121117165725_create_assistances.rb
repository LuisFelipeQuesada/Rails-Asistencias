class CreateAssistances < ActiveRecord::Migration
  def change
    create_table :assistances do |t|
      t.string :name

      t.timestamps
    end
  end
end
