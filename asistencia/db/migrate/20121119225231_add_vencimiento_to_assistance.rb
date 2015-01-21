class AddVencimientoToAssistance < ActiveRecord::Migration
  def change
    add_column :assistances, :vencimiento, :date
  end
end
