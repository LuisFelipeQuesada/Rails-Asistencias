class CreateAplications < ActiveRecord::Migration
  def change
    create_table :aplications do |t|
      t.integer :assistance_id
      t.integer :user_id

      t.timestamps
    end
  end
end
