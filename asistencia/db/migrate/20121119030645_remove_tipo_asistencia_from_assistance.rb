class RemoveTipoAsistenciaFromAssistance < ActiveRecord::Migration
  def up
    remove_column :assistances, :tipo_asistencia_id
  end

  def down
    add_column :assistances, :tipo_asistencia_id, :integer
  end
end
