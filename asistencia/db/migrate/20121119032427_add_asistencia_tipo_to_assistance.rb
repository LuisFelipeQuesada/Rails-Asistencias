class AddAsistenciaTipoToAssistance < ActiveRecord::Migration
  def change
    add_column :assistances, :tipo_asistencia_id, :integer
  end
end
