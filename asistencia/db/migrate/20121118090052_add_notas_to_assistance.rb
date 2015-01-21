class AddNotasToAssistance < ActiveRecord::Migration
  def change
    add_column :assistances, :notas, :string
  end
end
