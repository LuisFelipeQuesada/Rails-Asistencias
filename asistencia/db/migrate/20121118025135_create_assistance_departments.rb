class CreateAssistanceDepartments < ActiveRecord::Migration
  def change
    create_table :assistance_departments do |t|
      t.integer :assistance_id
      t.integer :department_id

      t.timestamps
    end
  end
end
