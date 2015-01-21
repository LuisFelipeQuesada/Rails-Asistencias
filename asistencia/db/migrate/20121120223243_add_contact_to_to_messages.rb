class AddContactToToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :contact_to, :string
  end
end
