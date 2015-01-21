class RemoveNameFromMessages < ActiveRecord::Migration
  def up
    remove_column :messages, :name
  end

  def down
    add_column :messages, :name, :string
  end
end
