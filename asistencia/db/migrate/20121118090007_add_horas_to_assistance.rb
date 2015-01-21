class AddHorasToAssistance < ActiveRecord::Migration
  def change
    add_column :assistances, :horas, :integer
  end
end
