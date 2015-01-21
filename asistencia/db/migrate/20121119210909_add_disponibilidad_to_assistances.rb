class AddDisponibilidadToAssistances < ActiveRecord::Migration
  def change
    add_column :assistances, :disponibilidad, :boolean
  end
end
